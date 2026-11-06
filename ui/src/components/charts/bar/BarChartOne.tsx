import type { CategoryDTO, StatisticsDTO } from "@/api-client";
import { useLanguage } from "@/context/LanguageContext";
import type { ApexOptions } from "apexcharts";
import Chart from "react-apexcharts";
import { useTranslation } from "react-i18next";

interface BarChartOneProps {
  stats: StatisticsDTO | null;
  categories: CategoryDTO[] | null;
}

export default function BarChartOne({ stats, categories }: BarChartOneProps) {
  const { t } = useTranslation();
  const { currentLanguage } = useLanguage();
  
  if(!stats || !categories) {
    return;
  }

  const categ = categories.map(x => currentLanguage.code === 'en' ? x.trEn : x.trSlo).filter((val): val is string => val !== undefined);
  const stastNums = [stats.sumDurationSport, stats.sumDurationEducation, stats.sumDurationTasks, stats.sumDurationArt, stats.sumDurationOther].filter((val): val is number => val !== undefined);
  const options: ApexOptions = {
    colors: ["#465fff"],
    chart: {
      fontFamily: "Outfit, sans-serif",
      type: "bar",
      height: 180,
      toolbar: {
        show: false,
      },
    },
    plotOptions: {
      bar: {
        horizontal: false,
        columnWidth: "39%",
        borderRadius: 5,
        borderRadiusApplication: "end",
      },
    },
    dataLabels: {
      enabled: false,
    },
    stroke: {
      show: true,
      width: 4,
      colors: ["transparent"],
    },
    xaxis: {
      categories: categ,
      /*[
        "Jan",
        "Feb",
        "Mar",
        "Apr",
        "May",
        "Jun",
        "Jul",
        "Aug",
        "Sep",
        "Oct",
        "Nov",
        "Dec",
      ],*/
      axisBorder: {
        show: false,
      },
      axisTicks: {
        show: false,
      },
    },
    legend: {
      show: true,
      position: "top",
      horizontalAlign: "left",
      fontFamily: "Outfit",
    },
    yaxis: {
      title: {
        text: undefined,
      },
    },
    grid: {
      yaxis: {
        lines: {
          show: true,
        },
      },
    },
    fill: {
      opacity: 1,
    },

    tooltip: {
      x: {
        show: false,
      },
      y: {
        formatter: (val: number) => `${val}`,
      },
    },
  };
  const series = [
    {
      name: t('activities.selectCategory'),
      data: stastNums,// [stats.sumDurationSport, stats.sumDurationEducation, stats.sumDurationTasks, stats.sumDurationArt, stats.sumDurationOther],
    },
  ];

  return (
    <div className="custom-scrollbar max-w-full overflow-x-auto">
      <div id="chartOne" className="min-w-250">
        <Chart options={options} series={series} type="bar" height={180} />
      </div>
    </div>
  );
}
