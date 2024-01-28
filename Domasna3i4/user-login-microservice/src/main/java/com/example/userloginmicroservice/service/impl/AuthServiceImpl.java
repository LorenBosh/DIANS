package com.example.userloginmicroservice.service.impl;

import com.example.userloginmicroservice.model.User;
import com.example.userloginmicroservice.model.exceptions.InvalidArgumentsException;
import com.example.userloginmicroservice.model.exceptions.InvalidUserCredentialsException;
import com.example.userloginmicroservice.model.exceptions.PasswordsDoNotMatchException;
import com.example.userloginmicroservice.repository.UserRepositoryImpl;
import com.example.userloginmicroservice.service.AuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AuthServiceImpl implements AuthService {


    private final UserRepositoryImpl userRepository;

    public AuthServiceImpl(UserRepositoryImpl userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public User login(String username, String password) {
        if (username == null || username.isEmpty() || password==null || password.isEmpty()) {
            throw new InvalidArgumentsException();
        }
        return userRepository.findByUsernameAndPassword(username,password).orElseThrow(InvalidUserCredentialsException::new);
    }

    @Override
    public User register(String username, String password, String repeatPassword, String name, String surname) {
        if (username == null || username.isEmpty() || password==null || password.isEmpty()) {
            throw new InvalidArgumentsException();
        }
        if(!password.equals(repeatPassword)){
            throw new PasswordsDoNotMatchException();
        }
        User user=new User(username,password,name,surname);
        userRepository.saveOrUpdate(user);
        return user;
    }
}
