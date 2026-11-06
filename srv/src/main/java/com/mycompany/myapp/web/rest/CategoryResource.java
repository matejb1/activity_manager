package com.mycompany.myapp.web.rest;

import com.mycompany.myapp.dto.CategoryDTO;
import com.mycompany.myapp.service.CategoryService;
import io.swagger.v3.oas.annotations.media.ArraySchema;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/category")
public class CategoryResource {

    private final CategoryService categoryService;

    CategoryResource(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    @GetMapping
    @ApiResponse(responseCode = "200",
        description = "Get all categories",
        content = {
            @Content(array = @ArraySchema(schema= @Schema(implementation = CategoryDTO.class, description = "List of categories")), mediaType = "application/json")
        })
    public ResponseEntity<List<CategoryDTO>> getAllCategories() {
        return ResponseEntity.ok(this.categoryService.getCategories());
    }

}
