// next.js middleware support for Supabase

import { getSupabaseReqResClient } from "./supabase-utils/reqResClient";
import { NextResponse } from "next/server";

// matcher to ignore static files
export const config = {
  matcher: ["/((?!.*\\.).*)"],
}

export async function middleware(request) {
  const { supabase, response } = getSupabaseReqResClient({ request });
  // if valid, refresh Supabase session
  await supabase.auth.getSession();
  return response.value;
}