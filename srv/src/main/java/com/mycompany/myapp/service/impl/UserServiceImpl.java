package com.mycompany.myapp.service.impl;

import com.mycompany.myapp.domain.User;
import com.mycompany.myapp.dto.UserDTO;
import com.mycompany.myapp.repository.UserRepository;
import com.mycompany.myapp.security.SecurityUtils;
import com.mycompany.myapp.service.UserService;
import com.mycompany.myapp.service.mapper.UserMapper;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Service
@Transactional
public class UserServiceImpl implements UserService {

    private final UserRepository userRepository;
    private final UserMapper userMapper;
    public UserServiceImpl(UserRepository userRepository, UserMapper userMapper) {
        this.userRepository = userRepository;
        this.userMapper = userMapper;
    }

    @Override
    public Optional<UserDTO> syncUser() {
        String username = SecurityUtils.getCurrentUserLogin().get();
        Optional<User> userOpt = this.userRepository.findByUsername(username);
        SecurityContext securityContext = SecurityContextHolder.getContext();
        Jwt jwt = (Jwt) securityContext.getAuthentication().getPrincipal();

        User user = userOpt.orElseGet(User::new);
        populateFieldsFromToken(user, jwt, username);
        user = this.userRepository.save(user);

        return Optional.of(this.userMapper.toDto(user));
    }

    private static void populateFieldsFromToken(User user, Jwt jwt, String username) {
        user.setEmail(jwt.getClaimAsString("email"));
        user.setFirstName(jwt.getClaimAsString("given_name"));
        user.setLastName(jwt.getClaimAsString("family_name"));
        user.setUsername(username);
    }
}
