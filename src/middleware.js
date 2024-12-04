// next.js middleware support for Supabase client

import { getSupabaseReqResClient } from "./supabase-utils/reqResClient";

export async function middleware(request) {
  const { supabase, response } = getSupabaseReqResClient({ request });
  return response.value;
}