import { NextResponse } from "next/server";
import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { buildUrl } from "@/utils/url-helpers";

// server side authentication
export async function POST(request, { params }) {
  const formData = await request.formData();
  const email = formData.get("email");
  const password = formData.get("password");
  const supabase = getSupabaseCookiesUtilClient();
  const { tenant } = await params;

  const tenantUrl = (path) => buildUrl(path, tenant, request);

  // attempt sign-in
  const { data, error } = await supabase.auth.signInWithPassword({
    email,
    password,
  });

  // check if unsuccessful
  const userData = data?.user;
  if (error || !userData) {
    return NextResponse.redirect(tenantUrl("/error?type=login-failed"), {
      status: 302,
    });
  }

  // successful login
  return NextResponse.redirect(tenantUrl("/tickets"), {
    status: 302,
  });
}
