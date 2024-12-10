import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { NextResponse } from "next/server";
import { buildUrl } from "@/utils/url-helpers";

export async function GET(request, { params }) {
  // grab full URL and get query parameters
  const { searchParams } = new URL(request.url);
  const hashed_token = searchParams.get("hashed_token");
  const { tenant } = await params;

  const tenantUrl = (path) => buildUrl(path, tenant, request);

  // verify OTP
  const supabase = getSupabaseCookiesUtilClient();
  const { error } = await supabase.auth.verifyOtp({
    type: "magiclink",
    token_hash: hashed_token,
  });

  // check for errors
  if (error) {
    return NextResponse.redirect(tenantUrl("/error?type=invalid_magiclink"));
  } else {
    return NextResponse.redirect(tenantUrl("/tickets"));
  }
}
