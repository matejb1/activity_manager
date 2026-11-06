package com.mycompany.myapp.service.mapper;

import com.mycompany.myapp.domain.User;
import com.mycompany.myapp.dto.UserDTO;
import org.mapstruct.Mapper;
import org.mapstruct.MappingTarget;
import org.mapstruct.NullValuePropertyMappingStrategy;

@Mapper(componentModel = "spring", nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
public interface UserMapper {
    UserDTO toDto(User user);
    User toEntity(UserDTO dto);
    void updateEntityFromDto(UserDTO dto, @MappingTarget User entity);

}
