package com.mycompany.myapp.service.impl;

import com.mycompany.myapp.domain.Activity;
import com.mycompany.myapp.domain.Category;
import com.mycompany.myapp.domain.User;
import com.mycompany.myapp.dto.ActivityDTO;
import com.mycompany.myapp.repository.ActivityRepository;
import com.mycompany.myapp.repository.CategoryRepository;
import com.mycompany.myapp.repository.UserRepository;
import com.mycompany.myapp.security.SecurityUtils;
import com.mycompany.myapp.service.ActivityService;
import com.mycompany.myapp.service.mapper.ActivityMapper;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class ActivityServiceImpl implements ActivityService {

    private final ActivityRepository activityRepository;
    private final ActivityMapper activityMapper;
    private final UserRepository userRepository;
    private final CategoryRepository categoryRepository;
    ActivityServiceImpl(ActivityRepository activityRepository, ActivityMapper activityMapper, UserRepository userRepository, CategoryRepository categoryRepository) {
        this.activityRepository = activityRepository;
        this.activityMapper = activityMapper;
        this.userRepository = userRepository;
        this.categoryRepository = categoryRepository;
    }

    @Override
    public ActivityDTO addActivity(ActivityDTO activityDTO) {
        if(activityDTO.getDuration() < 0) {
            throw new RuntimeException("Duration must be positive.");
        }
        String username = SecurityUtils.getCurrentUserLogin().get();
        Optional<User> userOpt = this.userRepository.findByUsername(username);
        if(userOpt.isEmpty()) {
            throw new RuntimeException("User cannot be found.");
        }
        Activity activity = activityMapper.toEntity(activityDTO);
        Optional<Category> categoryOpt = categoryRepository.findById(activityDTO.getIdCategory());
        if(categoryOpt.isEmpty()) {
            throw new RuntimeException("Category cannot be found.");
        }
        activity.setCategory(categoryOpt.get());
        activity.setUser(userOpt.get());
        activity.setTimeStart(activityDTO.getTimeStart());
        activity = activityRepository.save(activity);
        return activityMapper.toDto(activity);
    }

    @Override
    public ActivityDTO updateActivity(Long id, ActivityDTO activityDTO) {
        if(activityDTO.getDuration() < 0) {
            throw new RuntimeException("Duration must be positive.");
        }
        Optional<Activity> activityOpt = activityRepository.findById(id);
        if(activityOpt.isEmpty()) {
            throw new RuntimeException("Activity cannot be found");
        }
        Activity activity = activityOpt.get();
        activityMapper.updateEntityFromDto(activityDTO, activity);

        String username = SecurityUtils.getCurrentUserLogin().get();
        Optional<User> userOpt = this.userRepository.findByUsername(username);
        if(userOpt.isEmpty()) {
            throw new RuntimeException("User cannot be found");
        }
        Optional<Category> categoryOpt = categoryRepository.findById(activityDTO.getIdCategory());
        if(categoryOpt.isEmpty()) {
            throw new RuntimeException("Category cannot be found.");
        }
        activity.setCategory(categoryOpt.get());
        activity.setUser(userOpt.get());

        activity = activityRepository.save(activity);
        return activityMapper.toDto(activity);
    }

    @Override
    public void deleteActivity(Long id) {
        Optional<Activity> activityOpt = activityRepository.findById(id);
        if(activityOpt.isEmpty()) {
            throw new RuntimeException("Activity cannot be found");
        }
        Activity activity = activityOpt.get();

        String username = SecurityUtils.getCurrentUserLogin().get();
        Optional<User> userOpt = this.userRepository.findByUsername(username);
        if(userOpt.isEmpty()) {
            throw new RuntimeException("User cannot be found");
        }
        User user = userOpt.get();

        if (activity.getUser().getId() != user.getId()) {
            throw new RuntimeException("User isn't allowed to delete this activity record.");
        }

        activityRepository.deleteById(id);
    }

    @Override
    @Transactional(readOnly = true)
    public Optional<ActivityDTO> getActivity(Long id) {
        return activityRepository.findById(id).map(activityMapper::toDto);
    }

    @Override
    @Transactional(readOnly = true)
    public Page<ActivityDTO> getActivities(Pageable pageable) {
        return activityRepository.findAll(pageable).map(activityMapper::toDto);
    }

}
