import { ActivityResourceApi, CategoryResourceApi, Configuration, type ActivityDTO, type CategoryDTO } from "@/api-client";
import PageBreadcrumb from "@/components/common/PageBreadCrumb";
import PageMeta from "@/components/common/PageMeta";
import BasicTableOne from "@/components/tables/BasicTables/BasicTableOne";
import Button from "@/components/ui/button/Button";
import customAxiosInstance from "@/customAxiosInstance";
import { BoxIcon } from "@/icons";
import { cn } from "@/utils";
import "@fullcalendar/react/skeleton.css";
import "@fullcalendar/react/themes/classic/palette.css";
import "@fullcalendar/react/themes/classic/theme.css";
import { useEffect, useRef, useState } from "react";
import { useTranslation } from "react-i18next";
import { useNavigate } from "react-router";

export default function AcitvityListPage() {
  const stylesMarginBottom = {
    marginBottom: '30px',
  };
  const { t } = useTranslation();
  const navigate = useNavigate();
  const init = useRef(false);

  const [categories, setCategories] = useState<CategoryDTO[] | null>(null);
  const [activites, setActivites] = useState<ActivityDTO[] | null>(null);

  const configuration = new Configuration({
    basePath: import.meta.env.VITE_API_URL,
  });

  const categoryResourceApi = new CategoryResourceApi(  
    configuration,
    undefined,
    customAxiosInstance,
  );

  const activityResourceApi = new ActivityResourceApi(  
    configuration,
    undefined,
    customAxiosInstance,
  );


  const getAllCategories = async () => {
    try {
      const c = await categoryResourceApi.getAllCategories(); 
      setCategories(c.data);
    } catch (error) {
      console.error("Error fetching categories:", error);
    }
  };


  const getAllActivities = async () => {
    try {
      const c = await activityResourceApi.getActivities({page: 0, size: 50}); 
      setActivites((c.data as any).content);
    } catch (error) {
      console.error("Error fetching categories:", error);
    }
  };



  useEffect(() => {
    return () => {
      
      if (init.current) return;
      init.current = true;

      getAllCategories();
      getAllActivities();
    };
  }, []);



  return (
    <div>
      <PageMeta
        title={t('sidebar.items.activities')}
        description={t('sidebar.items.activities')}
      />
      <PageBreadcrumb pageTitle={t('sidebar.items.activities')} />

      <div 
        className={cn("flex items-center justify-end gap-3 space-y-6")} 
        style={stylesMarginBottom}>
        <Button 
          className="rounded-lg bg-red-500 px-1 py-1 text-sm font-medium text-white hover:bg-red-800"
          variant="primary"
          startIcon={<BoxIcon className="size-5" />}
          onClick={() => navigate('/activities/new')}>
            {t('activities.createActivity')}
        </Button>
      </div>
      
      <BasicTableOne tableData={activites} categories={categories} />
      
    </div>
  );
}
