import { NextResponse } from "next/server";
import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";

// server side authentication
export async function POST(request) {
  const formData = await request.formData();
  const email = formData.get("email");
  const supabase = getSupabaseCookiesUtilClient();

  //console.log(supabase);

  // attempt sign-in
  const { data, error } = await supabase.auth.signInWithOtp({
    email,
    options: { shouldCreateUser: false }
  });

  // check if unsuccessful
  const userData = data?.user;
  if (error) {
    return NextResponse.redirect(
      new URL("/error?type=magiclink", request.url),
      302
    );
  }

  // successful
  const thanksUrl = new URL("/magic-thanks", request.url);
  return NextResponse.redirect(thanksUrl, 302);
}