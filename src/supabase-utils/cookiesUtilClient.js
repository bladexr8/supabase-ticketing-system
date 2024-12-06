// utilities for working with Supabase in next.js app router
// applicable to server components, Route Handlers and Server Actions

import { createServerClient } from "@supabase/ssr";
import { cookies } from  "next/headers";

export const getSupabaseCookiesUtilClient = () => {

  return createServerClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY,
    {
      cookies: {
        async getAll() {
          const cookieStore = await cookies();
          return await cookieStore.getAll();
        },
      
        async setAll(cookiesToSet) {
          const cookieStore = await cookies();
          try {
            cookiesToSet.forEach(async ({ name, value, options }) => {
              await cookieStore.set(name, value, options);
            });
          } catch (err) {
            console.error("Failed to set cookies", err);
          }
        },
      },
    }
  );
}