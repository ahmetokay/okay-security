package com.okay.security.converter;

import com.okay.security.core.AbstractBaseConverter;
import com.okay.security.entity.Role;
import com.okay.security.model.RoleDto;
import org.springframework.stereotype.Component;

@Component
public class RoleConverter extends AbstractBaseConverter<RoleDto, Role> {
}