// next.js middleware support for Supabase

import { getSupabaseReqResClient } from "./supabase-utils/reqResClient";
import { NextResponse } from "next/server";

// matcher to ignore static files
export const config = {
  matcher: ["/((?!.*\\.).*)"],
}

export async function middleware(req) {
  const res = NextResponse.next();
  const { supabase, response } = getSupabaseReqResClient({ request: req });
  
  // protected route(s)
  const session = await supabase.auth.getSession();

  const requestedPath = req.nextUrl.pathname;
  const sessionUser = session.data?.session?.user;

  // re-direct based on auth status
  if (requestedPath.startsWith("/tickets")) {
    if (!sessionUser) {
      return NextResponse.redirect(new URL("/", req.url));
    } 
  } else if (requestedPath === "/") {
    if (sessionUser) {
      return NextResponse.redirect(new URL("/tickets", req.url));
    }
  }

  return response.value;
}