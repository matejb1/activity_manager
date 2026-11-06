// auth/AuthProvider.tsx

import { createContext, useContext, useEffect, useState } from "react";
import { useKeycloak } from "@react-keycloak/web";
import type { KeycloakProfile } from "keycloak-js";

interface AuthContextValue {
  profile: KeycloakProfile;
  token: string;
  logout: () => void;
}

export const AuthContext = createContext<AuthContextValue | null>(null);

export function AuthProvider({ children }: { children: React.ReactNode }) {
  const { keycloak, initialized } = useKeycloak();

  const [profile, setProfile] = useState<KeycloakProfile | null>(null);
  const [loading, setLoading] = useState(true);

  
  useEffect(() => {
    if (!initialized) {
      return;
    }

    if (!keycloak.authenticated) {
      setLoading(false);
      return;
    }

    const loadProfile = async () => {
      try {
        await keycloak.updateToken(30);

        const userProfile = await keycloak.loadUserProfile();

        setProfile(userProfile);
      } catch (error) {
        console.error("Failed to load user profile", error);
      } finally {
        setLoading(false);
      }
    };

    void loadProfile();
  }, [initialized, keycloak]);

  // Don't render the application until authentication is ready
  if (!initialized || loading) {
    return <div>Loading...</div>;
  }

  // login-required should normally prevent reaching this state,
  // but keeping this check makes the provider safer.
  if (!keycloak.authenticated || !profile) {
    return null;
  }

  return (
    <AuthContext.Provider
      value={{
        profile,
        token: keycloak.token!,
        logout: () => void keycloak.logout(),
      }}
    >
      {children}
    </AuthContext.Provider>
  );
}
