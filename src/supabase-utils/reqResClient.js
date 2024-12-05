// utilities for working with Supabase in a next.js middleware

import { createServerClient } from "@supabase/ssr";
import { NextResponse } from "next/server";

export const getSupabaseReqResClient = ({ request }) => {
  // create a response object that copies existing headers from
  // the incoming request to retain existing cookies for
  // whatever is rendered after the middleware
  let response = {
    value: NextResponse.next({ request: request }),
  };

  const supabase = createServerClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY,
    {
      cookies: {
        getAll() {
          return request.cookies.getAll();
        },
        setAll(cookiesToSet) {
          cookiesToSet.forEach(({ name, value, options }) => {
            request.cookies.set(name, value);
          });
          // set request object to be used for any
          // downstream processing
          response.value = NextResponse.next({
            request,
          });
        },
      },
    }
  );
  // return Supabase client and response to be used
  // as a response object later
  return { supabase, response };
};
