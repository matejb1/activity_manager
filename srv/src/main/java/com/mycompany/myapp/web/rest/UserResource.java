package com.mycompany.myapp.web.rest;

import com.mycompany.myapp.dto.UserDTO;
import com.mycompany.myapp.service.UserService;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Optional;

@RestController
@RequestMapping("/api/user")
public class UserResource {

    private final UserService userService;

    UserResource(UserService userService) {
        this.userService = userService;
    }


    @GetMapping("/sync")
    @ApiResponse(responseCode = "200",
        description = "Sync user",
        content = {
            @Content(
                schema= @Schema(implementation = UserDTO.class, description = "Sync user"),
                mediaType = "application/json"
            )
    })
    public ResponseEntity<Optional<UserDTO>> syncUser() {
        Optional<UserDTO> result = this.userService.syncUser();
        return ResponseEntity.ok(result);
    }
}
