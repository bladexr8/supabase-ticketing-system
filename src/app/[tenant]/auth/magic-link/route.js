import { NextResponse } from "next/server";
import { getSupabaseAdminClient } from "@/supabase-utils/adminClient";
import nodemailer from "nodemailer";
import { buildUrl } from "@/utils/url-helpers";

// server side authentication
export async function POST(request, { params }) {
  const formData = await request.formData();
  const email = formData.get("email");
  const supabaseAdmin = getSupabaseAdminClient();
  const { tenant } = await params;

  const tenantUrl = (path) => buildUrl(path, tenant, request);

  // generate a magic link
  const { data: linkData, error } = await supabaseAdmin.auth.admin.generateLink(
    {
      email,
      type: "magiclink",
    }
  );

  if (error) {
    return NextResponse.redirect(tenantUrl("/error?type=magiclink"), 302);
  }

  // workaround to delete a new user, if created in lieu of
  // a "shouldCreateUser" option
  if (linkData.properties) {
    const user = linkData.user;
    const { verification_type } = linkData.properties;
    if (verification_type === "signup") {
      await supabaseAdmin.auth.admin.deleteUser(user.id);
      return;
    }
  }

  // extract hashed token (OTP) from generated
  // magic link
  const { hashed_token } = linkData.properties;

  // construct custom link
  const constructedLink = tenantUrl(
    `/auth/verify?hashed_token=${hashed_token}`
  );

  // send magic link email
  const transporter = nodemailer.createTransport({
    host: process.env.SMTP_EMAIL_HOST || "localhost",
    port: process.env.SMTP_EMAIL_PORT || 54325,
  });

  await transporter.sendMail({
    from: "Malibu Consulting <mailer@malibuconsulting.com>",
    to: email,
    subject: "Magic Link",
    html: `
      <h1>Hi there, this is a custom magic link email!</h1>
      <p>Click <a href="${constructedLink.toString()}">here</a> to login</p>
    `,
  });

  // successful
  const thanksUrl = tenantUrl("/magic-thanks");
  return NextResponse.redirect(thanksUrl, 302);
}
