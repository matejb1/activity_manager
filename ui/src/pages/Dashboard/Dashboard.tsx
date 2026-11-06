import { CategoryResourceApi, Configuration, StatisticsResourceApi, type CategoryDTO, type StatisticsDTO } from "@/api-client";
import BarChartOne from "@/components/charts/bar/BarChartOne";
import PieChartOne from "@/components/charts/pie/PieChart";
import PageBreadcrumb from "@/components/common/PageBreadCrumb";
import PageMeta from "@/components/common/PageMeta";
import customAxiosInstance from "@/customAxiosInstance";
import { useEffect, useRef, useState } from "react";
import { useTranslation } from "react-i18next";

export default function HomeDashboard() {
  const { t } = useTranslation();
  const init = useRef(false);
  const [stats, setStats] = useState<StatisticsDTO | null>(null);
  const [categories, setCategories] = useState<CategoryDTO[] | null>(null);
  const configuration = new Configuration({
    basePath: import.meta.env.VITE_API_URL,
  });

  const statisticsResourceApi = new StatisticsResourceApi(  
    configuration,
    undefined,
    customAxiosInstance,
  );

   const categoryResourceApi = new CategoryResourceApi(  
    configuration,
    undefined,
    customAxiosInstance,
  );

  const getStatistics = async () => {
    try {
      const s = await statisticsResourceApi.getStatistics(); 
      setStats(s.data);
      
      const c = await categoryResourceApi.getAllCategories(); 
      setCategories(c.data);

    } catch (error) {
      console.error("Error fetching categories:", error);
    }
  };

  useEffect(() => {
    return () => {
      
      if (init.current) return;
      init.current = true;

      getStatistics();
    };
  }, []);



  return (
    <>
      <PageMeta
        title={t('sidebar.items.dashboard')}
        description={t('sidebar.items.dashboard')}
      />
      <PageBreadcrumb pageTitle={t('sidebar.items.dashboard')} />

      <div className="grid grid-cols-1 gap-4 md:gap-6">
        <BarChartOne categories={categories} stats={stats} />
        <span className="text-gray-800 dark:text-white/90 text-center">{t('dashboard.allDuration')}</span>
      </div>
      <div className="w-full max-w-xs h-128 mx-auto space-y-6">
        <PieChartOne categories={categories} stats={stats} />
        <span className="text-gray-800 dark:text-white/90 text-center">{t('dashboard.allCount')}</span>
      </div>
    </>
  );
}
