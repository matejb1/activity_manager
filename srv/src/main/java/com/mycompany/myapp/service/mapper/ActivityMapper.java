package com.mycompany.myapp.service.mapper;

import com.mycompany.myapp.domain.Activity;
import com.mycompany.myapp.dto.ActivityDTO;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingTarget;
import org.mapstruct.NullValuePropertyMappingStrategy;

@Mapper(componentModel = "spring", nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
public interface ActivityMapper {
    @Mapping(source = "category.id", target = "idCategory")
    @Mapping(source = "user.id", target = "idUser")
    ActivityDTO toDto(Activity activity);

    @Mapping(source = "idCategory", target = "category.id")
    @Mapping(source = "idUser", target = "user.id")
    Activity toEntity(ActivityDTO dto);
    void updateEntityFromDto(ActivityDTO dto, @MappingTarget Activity entity);

}
