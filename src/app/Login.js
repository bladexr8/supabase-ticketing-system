"use client";
import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { useRef, useState } from "react";

export const Login = ({ isPasswordLogin }) => {
  // store a reference to email and password elements so they
  // can be accessed when form submitted
  const emailInputRef = useRef(null);
  const passwordInputRef = useRef(null);
  const supabase = getSupabaseBrowserClient();
  const router = useRouter();
  return (
    <form
      method="POST"
      action="/auth/pw-login"
      onSubmit={(event) => {
        event.preventDefault();
        if (isPasswordLogin) {
          //alert("User wants to login with password");
          supabase.auth.signInWithPassword({
            email: emailInputRef.current.value,
            password: passwordInputRef.current.value,
          })
          .then((result) => {
            if (result.data?.user) {
              //alert("Successfully Signed In");
              router.push("/tickets")
            } else {
              alert("Could Not Sign In");
            }
          });
        } else {
          alert("User wants to login with magic link");
        }
      }}
    >
      <article style={{ maxWidth: "420px", margin: "auto" }}>
        <header>Login</header>

        <fieldset>
          <label htmlFor="email">
            Email
            <input
              type="email"
              id="email"
              name="email"
              ref={emailInputRef}
              required
            />
          </label>

          {isPasswordLogin && (
            <label htmlFor="password">
              Password
              <input
                type="password"
                id="password"
                name="password"
                ref={passwordInputRef}
              />
            </label>
          )}
        </fieldset>

        <p>
          {isPasswordLogin ? (
            <Link href={{ pathname: "/", query: { magicLink: "yes" } }}>
              Go to Magic Link Login
            </Link>
          ) : (
            <Link href={{ pathname: "/", query: { magicLink: "no" } }}>
              Go to Password Login
            </Link>
          )}
        </p>

        <button type="submit">
          Sign in with {isPasswordLogin ? "Password" : "Magic Link"}
        </button>
      </article>
    </form>
  );
};
