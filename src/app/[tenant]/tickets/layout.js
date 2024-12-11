import TenantName from "./TenantName";
import Nav from "./Nav";

export default async function TicketsLayout(pageProps) {
  const { tenant } = await pageProps.params;

  return (
    <>
      <section style={{ borderBottom: "1px solid gray" }}>
        {/* tenant name component goes here */}
        <TenantName tenant={tenant} />

        {/* navigation component goes here */}
        <Nav tenant={tenant} />
      </section>

      <section>{pageProps.children}</section>
    </>
  );
}
