package com.mycompany.myapp.web.rest;

import com.mycompany.myapp.dto.StatisticsDTO;
import com.mycompany.myapp.service.StatisticService;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;


@RestController
@RequestMapping("/api/statistics")
public class StatisticsResource {

    private final StatisticService statisticService;

    StatisticsResource(StatisticService statisticService) {
        this.statisticService = statisticService;
    }

    @GetMapping
    @ApiResponse(responseCode = "200",
        description = "Get acitivity by id",
        content = {
            @Content(
                schema= @Schema(implementation = StatisticsDTO.class, description = "Statistics DTO"),
                mediaType = "application/json"
            )
    })
    public ResponseEntity<StatisticsDTO> getStatistics() {
        return ResponseEntity.ok(this.statisticService.getStatistics());
    }



}
