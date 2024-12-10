// next.js middleware support for Supabase

import { getSupabaseReqResClient } from "./supabase-utils/reqResClient";
import { NextResponse } from "next/server";

// matcher to ignore static files
export const config = {
  matcher: ["/((?!.*\\.).*)"],
};

export async function middleware(req) {
  const res = NextResponse.next();
  const { supabase, response } = getSupabaseReqResClient({ request: req });

  // protected route(s)
  const session = await supabase.auth.getSession();

  const requestedPath = req.nextUrl.pathname;
  const sessionUser = session.data?.session?.user;

  const [tenant, ...restOfPath] = requestedPath.substr(1).split("/");

  // check if a valid alphanumeric tenant name
  if (!/[a-z0-9-_]+/.test(tenant)) {
    return NextResponse.rewrite(new URL("/not-found", req.url));
  }

  const applicationPath = "/" + restOfPath.join("/");

  // re-direct based on auth status
  if (applicationPath.startsWith("/tickets")) {
    if (!sessionUser) {
      return NextResponse.redirect(new URL(`/${tenant}`, req.url));
    }
  } else if (applicationPath === "/") {
    if (sessionUser) {
      return NextResponse.redirect(new URL(`/${tenant}/tickets`, req.url));
    }
  }

  return response.value;
}
