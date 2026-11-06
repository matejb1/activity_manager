package com.mycompany.myapp.service;

import com.mycompany.myapp.dto.ActivityDTO;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.Optional;

public interface ActivityService {

    Page<ActivityDTO> getActivities(Pageable pageable);
    Optional<ActivityDTO> getActivity(Long id);
    void deleteActivity(Long id);
    ActivityDTO updateActivity(Long id, ActivityDTO activityDTO);
    ActivityDTO addActivity(ActivityDTO activityDTO);

}
