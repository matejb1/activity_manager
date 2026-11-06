import {
  Table,
  TableBody,
  TableCell,
  TableHeader,
  TableRow,
} from "@/components/ui/table";

import Badge, { type BadgeColor } from "@/components/ui/badge/Badge";
import { useTranslation } from "react-i18next";
import { ActivityResourceApi, Configuration, type ActivityDTO, type CategoryDTO } from "@/api-client";
import { useLanguage } from "@/context/LanguageContext";
import Button from "@/components/ui/button/Button";
import { CloseLineIcon, EditIcon } from "@/icons";
import { cn } from "@/utils";
import { useNavigate } from "react-router";
import { Modal } from "@/components/ui/modal";
import { useState } from "react";
import { useModal } from "@/hooks/useModal";
import customAxiosInstance from "@/customAxiosInstance";

interface BasicTableOneProps {
  tableData: ActivityDTO[] | null;
  categories: CategoryDTO[] | null;
}

export default function BasicTableOne({ tableData, categories }: BasicTableOneProps) {

  const { t } = useTranslation();
  const { currentLanguage } = useLanguage();
  const navigate = useNavigate();
  const { isOpen, openModal, closeModal } = useModal();
  const [id, setId] = useState<number>();

  const configuration = new Configuration({
    basePath: import.meta.env.VITE_API_URL,
  });

  const activityResourceApi = new ActivityResourceApi(  
    configuration,
    undefined,
    customAxiosInstance,
  );

  if(!tableData) {
    return <></>;
  }
  if(!categories) {
    return <></>;
  }

  function determineBandgeColorByCategory(idCategory: number | undefined): BadgeColor {
    if(!idCategory) {
      return 'info';
    }
    const name = categories?.find(x => x.id == idCategory)?.name;

    if('SPORT' === name) {
      return 'info';
    }
    else if('EDUCATION' === name) {
      return 'success';
    }
    else if('TASKS' === name) {
      return 'warning';
    }
    else if('ART' === name) {
      return 'error';
    }
    else if('OTHER' === name) {
      return 'dark';
    }
    return 'info';
  }

  function determineTextByCategory(idCategory: number | undefined): string | undefined{
    if(!idCategory) {
      return '';
    }
    const item = categories?.find(x => x.id == idCategory);
    if(!item) {
      return '';
    }
    return currentLanguage.code === 'en' ? item.trEn : item.trSlo;
  }
  
  const deleteActivity = async () => {
    if(!id) {
      return;
    }
    await activityResourceApi.deleteActivityById(id);
    closeModal();
    window.location.reload();
  }

  return (
    <div className="overflow-hidden rounded-xl border border-gray-200 bg-white dark:border-white/5 dark:bg-white/3">
      <div className="max-w-full overflow-x-auto">
        <Modal
          isOpen={isOpen}
          onClose={closeModal}
          className="max-w-175 p-4 sm:p-6 lg:p-10"
          showCloseButton={true}
        >
          <h4 className="mb-2 text-2xl font-semibold text-gray-800 dark:text-white/90">
            {t('table.modal.title')}  
          </h4>
          <p className="mb-6 text-sm text-gray-500 lg:mb-7 dark:text-gray-400">
            {t('table.modal.deleteActivity')}  
          </p>
          <div className="mt-6 flex items-center gap-3 px-2 lg:justify-end">
            <Button size="sm" variant="outline" onClick={closeModal}>
              {t('common.close')}
            </Button>
            <Button size="sm" onClick={deleteActivity}>
              {t('common.delete')}
            </Button>
          </div>
        </Modal>
        
        <Table>
          {/* Table Header */}
          <TableHeader className="border-b border-gray-100 dark:border-white/5">
            <TableRow>
              <TableCell
                isHeader
                className="px-5 py-3 text-start text-theme-xs font-medium whitespace-nowrap text-gray-500 dark:text-gray-400"
              >
                {t('activities.activityName')}
              </TableCell>
              <TableCell
                isHeader
                className="px-5 py-3 text-start text-theme-xs font-medium whitespace-nowrap text-gray-500 dark:text-gray-400"
              >
                {t('activities.selectCategory')}
              </TableCell>
              <TableCell
                isHeader
                className="px-5 py-3 text-start text-theme-xs font-medium whitespace-nowrap text-gray-500 dark:text-gray-400"
              >
                {t('activities.date')}
              </TableCell>
               <TableCell
                isHeader
                className="px-5 py-3 text-start text-theme-xs font-medium whitespace-nowrap text-gray-500 dark:text-gray-400"
              >
                {t('activities.duration')}
              </TableCell>
              <TableCell
                isHeader
                className="px-5 py-3 text-start text-theme-xs font-medium whitespace-nowrap text-gray-500 dark:text-gray-400"
              >
                {t('common.actions')}
              </TableCell>
            </TableRow>
          </TableHeader>

          {/* Table Body */}
          <TableBody className="divide-y divide-gray-100 dark:divide-white/5">
            {tableData.map((activity) => (
              <TableRow key={activity.id}>
                
                <TableCell className="px-4 py-3 text-start text-theme-sm text-gray-800 dark:text-white/90">
                  {activity.name}
                </TableCell>
                
                <TableCell className="px-4 py-3 text-start text-theme-sm text-gray-500 dark:text-gray-400">
                  <Badge
                    size="md"
                    color={determineBandgeColorByCategory(activity.idCategory)}
                  >
                    {determineTextByCategory(activity.idCategory)}
                  </Badge>
                </TableCell>

                <TableCell className="px-4 py-3 text-start text-theme-sm text-gray-800 dark:text-white/90">
                  {activity.dateOfActivity}
                </TableCell>

                <TableCell className="px-4 py-3 text-start text-theme-sm text-gray-800 dark:text-white/90">
                  {activity.duration}
                </TableCell>
                
                <TableCell className="px-4 py-3 text-start text-theme-sm text-gray-500 dark:text-gray-400">
                  <div 
                    className={cn("flex items-center gap-2")}>
                    <Button 
                      startIcon={<EditIcon className="size-4" />} 
                      size={"sm"} 
                      variant="outline"
                      onClick={() => navigate(`/activities/${activity.id}`)}
                      >
                      {t('common.edit')}
                    </Button>
                    <Button 
                      startIcon={<CloseLineIcon className="size-4" />} 
                      size={"sm"}
                      variant="outline"
                      onClick={() => {setId(activity.id); openModal()}}
                    >
                      {t('common.delete')}
                    </Button>
                  </div>

                </TableCell>


              </TableRow>
            ))}
          </TableBody>
        </Table>
      </div>
    </div>
  );
}
