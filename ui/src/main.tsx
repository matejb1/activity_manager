import { ReactKeycloakProvider } from "@react-keycloak/web";
import "flatpickr/dist/flatpickr.css";
import "jsvectormap/dist/jsvectormap.css";
import { StrictMode } from "react";
import { createRoot } from "react-dom/client";
import "simplebar-react/dist/simplebar.min.css";
import "swiper/swiper-bundle.css";
import App from "./App.tsx";
import { AppWrapper } from "./components/common/PageMeta.tsx";
import { LanguageProvider } from "./context/LanguageContext.tsx";
import { ThemeProvider } from "./context/ThemeContext.tsx";
import keycloak from "./keycloak";
import "./i18n";
import "./index.css";
import { AuthProvider } from "./provider/AuthProvider.tsx";

createRoot(document.getElementById("root")!).render(
  <StrictMode>
    <ThemeProvider>
      <LanguageProvider>
        <AppWrapper>
          <ReactKeycloakProvider
            authClient={keycloak}
            initOptions={{
              onLoad: "login-required",
              checkLoginIframe: false,
            }}
          >
            <AuthProvider>
              <App/>
            </AuthProvider>
          </ReactKeycloakProvider>
        </AppWrapper>
      </LanguageProvider>
    </ThemeProvider>
  </StrictMode>,
);
