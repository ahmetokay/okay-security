package com.okay.security.converter;

import com.okay.security.core.AbstractBaseConverter;
import com.okay.security.entity.User;
import com.okay.security.model.UserDto;
import org.springframework.stereotype.Component;

@Component
public class UserConverter extends AbstractBaseConverter<UserDto, User> {
}