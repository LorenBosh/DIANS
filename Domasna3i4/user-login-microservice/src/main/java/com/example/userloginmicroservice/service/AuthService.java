package com.example.userloginmicroservice.service;

import com.example.userloginmicroservice.model.User;

public interface AuthService {
    User login(String username, String password);
    User register(String username,String password, String repeatPassword,String name,String surname);
}

