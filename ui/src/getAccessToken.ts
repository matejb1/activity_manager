// src/auth/getAccessToken.ts

import keycloak from "./keycloak";


export async function getAccessToken(): Promise<string> {
  if (!keycloak.authenticated) {
    throw new Error("User is not authenticated");
  }

  await keycloak.updateToken(30);

  if (!keycloak.token) {
    throw new Error("No Keycloak access token");
  }

  return keycloak.token;
}
