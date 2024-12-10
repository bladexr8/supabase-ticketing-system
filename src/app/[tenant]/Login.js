"use client";
import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { useRef, useEffect } from "react";

export const Login = ({ tenant, tenantName, isPasswordLogin }) => {
  // store a reference to email and password elements so they
  // can be accessed when form submitted
  const emailInputRef = useRef(null);
  const passwordInputRef = useRef(null);
  const supabase = getSupabaseBrowserClient();
  const router = useRouter();

  // listen to all events related to authentication
  // detect a login event
  useEffect(() => {
    const {
      data: { subscription },
    } = supabase.auth.onAuthStateChange((event, session) => {
      if (event === "SIGNED_IN") {
        console.log("Successfully Signed In with Magic Link...");
        router.push(`/${tenant}`);
      }
    });

    return () => subscription.unsubscribe();
  }, []);

  return (
    <form
      method="POST"
      action={
        isPasswordLogin
          ? urlPath("/auth/pw-login", tenant)
          : urlPath("/auth/magic-link", tenant)
      }
      onSubmit={(event) => {
        // if magic-link direct straight to backend
        isPasswordLogin && event.preventDefault();
        if (isPasswordLogin) {
          //alert("User wants to login with password");
          supabase.auth
            .signInWithPassword({
              email: emailInputRef.current.value,
              password: passwordInputRef.current.value,
            })
            .then((result) => {
              // login unsuccessful
              !result.data?.user && alert("Could not sign in");
            });
        }
      }}
    >
      <article style={{ maxWidth: "420px", margin: "auto" }}>
        <header>
          <div style={{ display: "block", fontSize: "0.7em" }}>
            {tenantName}
          </div>
        </header>

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
            <Link
              href={{
                pathname: urlPath("/", tenant),
                query: { magicLink: "yes" },
              }}
            >
              Go to Magic Link Login
            </Link>
          ) : (
            <Link
              href={{
                pathname: urlPath("/", tenant),
                query: { magicLink: "no" },
              }}
            >
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
