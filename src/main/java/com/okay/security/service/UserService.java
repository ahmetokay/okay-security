package com.okay.security.service;

import com.okay.security.core.FilterModel;
import com.okay.security.model.UserDto;

import java.util.List;

public interface UserService {

    UserDto login(String username, String password);

    UserDto register(UserDto userDto);

    List<UserDto> list(FilterModel filterModel);
}