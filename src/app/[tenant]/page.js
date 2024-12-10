import { getSupabaseAdminClient } from "@/supabase-utils/adminClient";
import * as React from "react";

import { Login } from "./Login";

export default async function LoginPage({ searchParams, params }) {
  const { magicLink } = await searchParams;
  const { tenant } = await params;

  // check if tenant exists in database
  const supabaseAdmin = getSupabaseAdminClient();
  const { data, error } = await supabaseAdmin
    .from("tenants")
    .select("*")
    .eq("id", tenant)
    .single();

  if (error) {
    return notFound();
  }

  const { name: tenantName } = data;

  const wantsMagicLink = magicLink === "yes";

  return (
    <Login
      tenant={tenant}
      tenantName={tenantName}
      isPasswordLogin={!wantsMagicLink}
    />
  );
}
