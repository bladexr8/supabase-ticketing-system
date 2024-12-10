import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { buildUrl } from "@/utils/url-helpers";
import { NextResponse } from "next/server";

// server side logout
export async function GET(request, { params }) {
  const supabase = getSupabaseCookiesUtilClient();
  const { tenant } = await params;
  await supabase.auth.signOut();
  return NextResponse.redirect(buildUrl("/", tenant, request));
}
