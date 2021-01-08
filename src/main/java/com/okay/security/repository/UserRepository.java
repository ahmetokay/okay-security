package com.okay.security.repository;

import com.okay.security.entity.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository extends CrudRepository<User, Integer> {

    User findByUsernameAndPassword(String username, String password);

    User findByUsername(String username);

    List<User> findByNameContaining(String name);

    List<User> findByNameContainingAndSurnameContaining(String name, String surname);

    List<User> findByNameContainingIgnoreCaseAndSurnameContainingIgnoreCase(String name, String surname);
}