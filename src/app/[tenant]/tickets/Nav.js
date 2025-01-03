"use client";
import Link from "next/link";
import { usePathname, useRouter } from "next/navigation";
import { useEffect } from "react";

import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";
import { urlPath } from "@/utils/url-helpers";

export default function Nav({ tenant }) {
  const pathname = usePathname();
  const activeProps = { className: "contrast" };
  const inactiveProps = { className: "secondary outline" };

  const supabase = getSupabaseBrowserClient();
  const router = useRouter();

  // listen to all events related to authentication
  // detect a logout event
  useEffect(() => {
    const {
      data: { subscription },
    } = supabase.auth.onAuthStateChange((event, session) => {
      if (event === "SIGNED_OUT") {
        router.push(`/${tenant}`);
      }
    });

    return () => subscription.unsubscribe();
  }, []);

  return (
    <nav>
      <ul>
        <li>
          <Link
            role="button"
            href={urlPath("/tickets", tenant)}
            {...(pathname === urlPath("/tickets", tenant)
              ? activeProps
              : inactiveProps)}
          >
            Ticket List
          </Link>
        </li>
        <li>
          <Link
            role="button"
            href={urlPath("/tickets/new", tenant)}
            {...(pathname === urlPath("/tickets/new", tenant)
              ? activeProps
              : inactiveProps)}
          >
            Create New Ticket
          </Link>
        </li>
        <li>
          <Link
            role="button"
            href={urlPath("/tickets/users", tenant)}
            {...(pathname === urlPath("/tickets/users", tenant)
              ? activeProps
              : inactiveProps)}
          >
            User List
          </Link>
        </li>
      </ul>

      <ul>
        <li>
          <Link
            role="button"
            href={urlPath("/logout", tenant)}
            prefetch={false}
            className="secondary"
            onClick={(event) => {
              event.preventDefault();
              supabase.auth.signOut();
            }}
          >
            Log out
          </Link>
        </li>
      </ul>
    </nav>
  );
}
