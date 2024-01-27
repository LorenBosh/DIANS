package com.example.userloginmicroservice.web.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import jakarta.servlet.http.HttpServletRequest;
import com.example.userloginmicroservice.model.User;
import com.example.userloginmicroservice.model.exceptions.InvalidUserCredentialsException;
import com.example.userloginmicroservice.service.AuthService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping({"/auth","/login"})
public class LoginController {

    private final AuthService authService;

    @Autowired
    public LoginController(AuthService authService) {
        this.authService = authService;
    }


    @PostMapping("/login")
    public ResponseEntity<?> login(@RequestParam String username, @RequestParam String password) {
        try {
            User user = authService.login(username, password);
            // Consider using JWT or some other token-based authentication mechanism and return the token in the response
            return ResponseEntity.ok().body(user);
        } catch (InvalidUserCredentialsException exception) {
            return ResponseEntity.status(401).body(exception.getMessage());
        }
    }

    // You can add more endpoints for registration, logout, etc. based on your microservices design.

}