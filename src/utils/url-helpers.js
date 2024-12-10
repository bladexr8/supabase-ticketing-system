export function urlPath(applicationPath, tenant) {
  return `/${tenant}${applicationPath}`;
}

export function buildUrl(applicationPath, tenant, request) {
  return new URL(urlpath(applicationPath, tenant), request.url);
}
