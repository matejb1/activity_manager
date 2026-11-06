package com.mycompany.myapp.service.impl;

import com.mycompany.myapp.domain.Activity;
import com.mycompany.myapp.domain.Category;
import com.mycompany.myapp.dto.StatisticsDTO;
import com.mycompany.myapp.repository.ActivityRepository;
import com.mycompany.myapp.repository.CategoryRepository;
import com.mycompany.myapp.service.StatisticService;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StatisticServiceImpl implements StatisticService {

    private static final String CATEGORY_SPORT = "SPORT";
    private static final String CATEGORY_EDUCATION = "EDUCATION";
    private static final String CATEGORY_TASKS = "TASKS";
    private static final String CATEGORY_ART = "ART";
    private static final String CATEGORY_OTHER = "OTHER";

    private final CategoryRepository categoryRepository;
    private final ActivityRepository activityRepository;

    StatisticServiceImpl(ActivityRepository activityRepository, CategoryRepository categoryRepository) {
        this.activityRepository = activityRepository;
        this.categoryRepository = categoryRepository;
    }

    @Override
    public StatisticsDTO getStatistics() {
        StatisticsDTO result = new StatisticsDTO();
        List<Category> categories = this.categoryRepository.findAll();

        for(Category c: categories) {
            double sum = activityRepository.sumByIdCategory(c.getId());
            long count = activityRepository.countByIdCategory(c.getId());

            if(CATEGORY_SPORT.equals(c.getName())) {
                result.setSumDurationSport(sum);
                result.setCountSport(count);
            }
            else if (CATEGORY_EDUCATION.equals(c.getName())){
                result.setSumDurationEducation(sum);
                result.setCountEducation(count);
            }
            else if (CATEGORY_TASKS.equals(c.getName())){
                result.setSumDurationTasks(sum);
                result.setCountTasks(count);
            } else if (CATEGORY_ART.equals(c.getName())){
                result.setSumDurationArt(sum);
                result.setCountArt(count);
            } else if (CATEGORY_OTHER.equals(c.getName())){
                result.setSumDurationOther(sum);
                result.setCountOther(count);
            }
        }
        long count = activityRepository.count();
        result.setCountActivities(count);
        return result;
    }
}
