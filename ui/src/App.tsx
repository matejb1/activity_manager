import { Route, BrowserRouter as Router, Routes } from "react-router";
import { ScrollToTop } from "./components/common/ScrollToTop";
import AppLayout from "./layout/AppLayout";
import { lazy, Suspense } from "react";
import Spinner from "./components/ui/spinner/Spinner";

export default function App() {
  const Home = lazy(() => import("./pages/Dashboard/Dashboard"));
  const AcitvityListPage = lazy(() => import("./pages/Activities/ActivityList"));
  const AcitvityDetailsPage = lazy(() => import("./pages/Activities/ActivityDetails"));

  return (
    <>
      <Router>
        <ScrollToTop />
        <Suspense fallback={ <Spinner />}>

          <Routes>
            <Route element={<AppLayout />}>
              <Route path="/" element={<Home />} />
              <Route path="/activities" element={<AcitvityListPage />} />
              <Route path="/activities/:id" element={<AcitvityDetailsPage />} />
            </Route>
          </Routes>

        </Suspense>
      </Router>
    </>
  );
}
