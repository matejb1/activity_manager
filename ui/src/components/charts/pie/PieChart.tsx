import { Pie } from 'react-chartjs-2';
import { Chart as ChartJS, ArcElement, Tooltip, Legend } from "chart.js";
import { Doughnut } from "react-chartjs-2";
import type { ChartData, ChartDataset, ChartOptions } from 'chart.js';
import type { CategoryDTO, StatisticsDTO } from '@/api-client';
import { useLanguage } from '@/context/LanguageContext';
import { useTranslation } from "react-i18next";


interface PieProps {
  // options: ChartOptions<'pie'>;
    // data: ChartData<'pie'>;
    stats: StatisticsDTO | null;
    categories: CategoryDTO[] | null;
}

export default function PieChartOne({ stats, categories }: PieProps) {
    ChartJS.register(ArcElement, Tooltip, Legend);
    const { currentLanguage } = useLanguage();
    const { t } = useTranslation();
    
    if(!stats || !categories) {
        return;
    }
    const categ = categories.map(x => currentLanguage.code === 'en' ? x.trEn : x.trSlo).filter((val): val is string => val !== undefined);
    const all = [
        stats.countSport, 
        stats.countEducation, 
        stats.countTasks, 
        stats.countArt, 
        stats.countOther 
    ].filter((val): val is number => val !== undefined);
   
    const dataset: ChartDataset<"pie", number[]> = {
        data: all,  
        label: t('dashboard.allCount'),       
        backgroundColor: [
            '#3B82F6', // blue
            '#22C55E', // green
            '#F59E0B', // yellow
            '#EF4444', // red
            '#8B5CF6', // purple
        ],
        borderColor: '#ffffff',
        borderWidth: 2,
    }
    const data: ChartData<'pie'> = {
        datasets: [dataset],
        labels: categ,
        
    };
    
    return ( 
    <>
    <Pie 
        data={data}
    />
    
    </>
    );
}


