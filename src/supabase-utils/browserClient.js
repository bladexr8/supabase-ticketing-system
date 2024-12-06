// utilities for working with Supabase in a browser

import { createBrowserClient } from "@supabase/ssr";

// create a Supabase Client Connection
export const getSupabaseBrowserClient = () => {
  /*console.log(
    `NEXT_PUBLIC_SUPABASE_URL = ${process.env.NEXT_PUBLIC_SUPABASE_URL}`
  );
  console.log(
    `NEXT_PUBLIC_SUPABASE_ANON_KEY = ${process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY}`
  );*/
  return createBrowserClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY
  );
};
