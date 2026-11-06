import ComponentCard from "@/components/common/ComponentCard";
import PageBreadcrumb from "@/components/common/PageBreadCrumb";
import PageMeta from "@/components/common/PageMeta";
import Label from "@/components/form/Label";
import "@fullcalendar/react/skeleton.css";
import "@fullcalendar/react/themes/classic/palette.css";
import "@fullcalendar/react/themes/classic/theme.css";
import { useTranslation } from "react-i18next";
import { useNavigate, useParams } from "react-router";
import { cn } from "@/utils";
import Input from "@/components/form/input/InputField";
import DatePicker from "@/components/form/date-picker";
import { TimeIcon } from "@/icons";
import { useEffect, useRef, useState } from "react";
import { ActivityResourceApi, CategoryResourceApi, Configuration, type ActivityDTO, type CategoryDTO } from "@/api-client";
import customAxiosInstance from "@/customAxiosInstance";
import Select from "@/components/form/Select";
import { useLanguage } from "@/context/LanguageContext";
import TextArea from "@/components/form/input/TextArea";
import Button from "@/components/ui/button/Button";
import Spinner from "@/components/ui/spinner/Spinner";
import { default as dayjs } from 'dayjs';


export default function AcitvityDetailsPage() {
  const stylesMarginBottom = {
    marginBottom: '30px',
  };
  const navigate = useNavigate();
  const { t } = useTranslation();
  const { id } = useParams();
  const [isSending, setSending] = useState(false);
  const [isCreate, setIsCreate] = useState(false);
  const init = useRef(false);
  const [categories, setCategories] = useState<CategoryDTO[] | null>(null);
  const [categoriesOpt, setCategoriesOpt] = useState<{ value: string, label: string }[]>([])
  const { language: locale, setLanguage } = useLanguage();

  const [activity, setActivity] = useState<ActivityDTO | null>(null);

  const [category, setCategory] = useState<CategoryDTO | null>(null);
  const [name, setName] = useState('');
  const [description, setDescription] = useState('');
  const [date, setDate] = useState('');
  const [timeStart, setTimeStart] = useState('');
  const [duration, setDuration] = useState(0.0);

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

  useEffect(() => {
    return () => {
      const isCr = 'new' === id;
      setIsCreate(isCr)

      if (init.current) return;
      init.current = true;

      getAllCategories(isCr);

    };
  }, [id]);


  const getAllCategories = async (isCreate: boolean) => {
    try {
      const c = await categoryResourceApi.getAllCategories();
      setCategories(c.data);

      mapToCategoriesOptions(c.data);
      if (!isCreate) {
        getActivityById(Number(id), c.data);
      }
    } catch (error) {
      console.error("Error fetching categories:", error);
    }
  };

  const getActivityById = async (id: number, categories: CategoryDTO[]) => {
    try {
      const act = (await activityResourceApi.getActivity(id)).data;

      setActivity(act);

      if (act.name) {
        setName(act.name);
      }
      if (act.description) {
        setDescription(act.description);
      }
      if (act.duration) {
        setDuration(act.duration);
      }
      const categ = categories?.find(x => x.id === act.idCategory);
      //const categOpt = categoriesOpt?.find(x => x.value === act.idCategory?.toString())
      if (categ) {
        setCategory(categ);
      }
      if (act.timeStart) {
        setTimeStart(act.timeStart.split("T")[1])
      }
      if (act.dateOfActivity) {
        setDate(act.dateOfActivity)
      }

    } catch (error) {
      console.error("Error:", error);
    }
  };

  function selectDefaultCategory() {
    if (isCreate) {
      return undefined;
    }
    const result = categoriesOpt.find((option) => option.value === category?.id?.toString())?.value;
    return result;
  }

  function isFormValid(): boolean {
    if (duration > 0 && name.length > 0 && description.length > 0 && category != null && date.length > 0 && timeStart.length > 0) {
      return true;
    }
    return false;
  }

  const onSubmit = async () => {
    if (!isFormValid()) {
      return;
    }

    const timeSt =  dayjs(date + 'T' + timeStart ).format('YYYY-MM-DDTHH:mm:ss[Z]')// date + 'T' + timeStart + ':00.000Z'
    setSending(true);

    const data = {
      dateOfActivity: date,
      description: description,
      duration: duration,
      idCategory: category?.id,
      name: name,
      timeStart: timeSt,
    };

    if (isCreate) {
      await activityResourceApi.addActivity(data);
    }
    else {
      await activityResourceApi.updateActivity(Number(id), data);
    }

    setSending(false);
    navigate('/activities/')
  }


  function mapToCategoriesOptions(categories: CategoryDTO[]) {
    if (!categories) {
      return;
    }

    if (locale == 'en') {
      setCategoriesOpt(
        categories.map(({ id, trEn }) => ({
          value: id!.toString(),
          label: trEn!,
        }))
      );
    }
    else {
      setCategoriesOpt(
        categories.map(({ id, trSlo }) => ({
          value: id!.toString(),
          label: trSlo!,
        }))
      );
    }
  }

  function handleCategoryChange(value: string): void {
    const item = categories?.find(x => x.id === Number(value));
    if (item) {
      setCategory(item);
    }
  }


  const handleDurationChange = (e: any) => {
    setDuration(Number(e.currentTarget.value));
  };

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
          className="rounded-lg bg-green-500 px-1 py-1 text-sm hover:bg-green-800 disabled:bg-green-900"
          disabled={!isFormValid()}
          onClick={onSubmit}
        >
          {isSending && <Spinner />}
          {t('common.save')}
        </Button>
      </div>

      <div className={cn("grid grid-cols-1 gap-6 xl:grid-cols-2")}>
        <ComponentCard title={t('activities.info')}>
          <div className={cn("space-y-6")}>
            <div>
              <Label>{t('activities.selectCategory')}</Label>
              <Select
                options={categoriesOpt}
                placeholder={t('activities.selectCategoryPlaceHolder')}
                onChange={handleCategoryChange}
                className="dark:bg-dark-900"
                value={selectDefaultCategory()}
              />
            </div>
            <div>
              <Label htmlFor="name">{t('activities.activityName')}</Label>
              <Input
                type="text"
                id="name"
                placeholder={t('activities.enterActivityName')}
                value={name}
                onChange={(value) => setName(value.currentTarget.value)}
              />
            </div>
          </div>
          <div>
            <Label>{t('activities.activityDescription')}</Label>
            <TextArea
              value={description}
              onChange={(value) => setDescription(value)}
              placeholder={t('activities.enterActivityDescription')}
              rows={6}
            />
          </div>
        </ComponentCard>

        <ComponentCard title={t('activities.duration')}>
          <div className={cn("space-y-6")}>
            <div>
              <DatePicker
                id="date-picker"
                label={t('activities.date')}
                placeholder={t('activities.enterDate')}
                onChange={(dates, currentDateString) => setDate(currentDateString) }
                defaultDate={date}
              />
            </div>
            <div>
              <Label htmlFor="tm">{t('activities.startTime')}</Label>
              <div className={cn("relative")}>
                <Input
                  type="time"
                  id="tm"
                  name="tm"
                  value={timeStart}
                  onChange={(e) => setTimeStart(e.currentTarget.value)}
                  onClick={(e) => e.currentTarget.showPicker?.()}
                />
                <span className={cn("pointer-events-none absolute end-3 top-1/2 -translate-y-1/2 text-gray-500 dark:text-gray-400")}>
                  <TimeIcon className={cn("size-6")} />
                </span>
              </div>
            </div>

            <div className={cn("relative")}>
              <Label htmlFor="duration">{t('activities.timeDuration')}: <b>{duration}</b></Label>
              <input 
                type="range"
                id="duration"
                min={0}
                max={8}
                step={0.5}
                onChange={handleDurationChange}
                value={duration}
                className="range range-primary w-full" 
              />
            </div>

          </div>
        </ComponentCard>
      </div>


    </div>
  );
}
