package com.mycompany.myapp.web.rest;

import com.mycompany.myapp.dto.ActivityDTO;

import com.mycompany.myapp.service.ActivityService;
import io.swagger.v3.oas.annotations.media.ArraySchema;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/api/activity")
public class ActivityResource {

    private final ActivityService activityService;

    ActivityResource(ActivityService activityService) {
        this.activityService = activityService;
    }

    @GetMapping("/{id}")
    @ApiResponse(responseCode = "200",
        description = "Get acitivity by id",
        content = {
            @Content(
                schema= @Schema(implementation = ActivityDTO.class, description = "Activity DTO"),
                mediaType = "application/json"
            )
    })
    public ResponseEntity<Optional<ActivityDTO>> getActivity(@PathVariable(name = "id") Long id) {
        return ResponseEntity.ok(this.activityService.getActivity(id));
    }

    @GetMapping
    @ApiResponse(responseCode = "200",
        description = "Get acitivities",
        content = {
            @Content(array = @ArraySchema(schema= @Schema(implementation = ActivityDTO.class, description = "List of activities")), mediaType = "application/json")
        })

    public ResponseEntity<Page<ActivityDTO>> getActivities(Pageable pageable) {
        return ResponseEntity.ok(this.activityService.getActivities(pageable));
    }


    @PostMapping
    @ApiResponse(responseCode = "200",
        description = "Add acitivity by id",
        content = {
            @Content(
                schema= @Schema(implementation = ActivityDTO.class, description = "Activity DTO"),
                mediaType = "application/json"
            )
        })
    public ResponseEntity<ActivityDTO> addActivity(@RequestBody ActivityDTO activityDTO) {
        return ResponseEntity.ok(this.activityService.addActivity(activityDTO));
    }


    @PutMapping("/{id}")
    @ApiResponse(responseCode = "200",
        description = "Update acitivity by id",
        content = {
            @Content(
                schema= @Schema(implementation = ActivityDTO.class, description = "Activity DTO"),
                mediaType = "application/json"
            )
        })
    public ResponseEntity<ActivityDTO> updateActivity(@PathVariable(name = "id") Long id, @RequestBody ActivityDTO activityDTO) {
        return ResponseEntity.ok(this.activityService.updateActivity(id, activityDTO));
    }


    @DeleteMapping("/{id}")
    @ApiResponse(responseCode = "200",
        description = "Get acitivity by id",
        content = {
            @Content(
                schema= @Schema(implementation = ActivityDTO.class, description = "Activity DTO"),
                mediaType = "application/json"
            )
        })
    public ResponseEntity<Void> deleteActivityById(@PathVariable(name = "id") Long id) {
        this.activityService.deleteActivity(id);
        return ResponseEntity.noContent().build();
    }


}
