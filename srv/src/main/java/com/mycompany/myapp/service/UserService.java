package com.mycompany.myapp.service;

import com.mycompany.myapp.dto.UserDTO;

import java.util.Optional;

public interface UserService {
    Optional<UserDTO> syncUser();
}
