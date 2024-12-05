"use client";

import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";
import * as React from "react";

import { Login } from "./Login";

export default function LoginPage({ searchParams }) {
  const { magicLink } = React.use(searchParams);
  const wantsMagicLink = magicLink === "yes";

  // test Supabase connection
  React.useEffect(() => {
    const supabase = getSupabaseBrowserClient();
    supabase.storage.listBuckets().then((result) => {
      console.log("Bucket List", result);
    });
  }, []);

  return <Login isPasswordLogin={!wantsMagicLink} />;
}
