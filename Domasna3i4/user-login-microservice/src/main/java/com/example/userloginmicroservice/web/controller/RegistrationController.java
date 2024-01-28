package com.example.userloginmicroservice.web.controller;

import com.example.userloginmicroservice.bootstrap.DataHolder;
import com.example.userloginmicroservice.model.User;
import com.example.userloginmicroservice.service.AuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Objects;

@RestController
@RequestMapping("/auth")
public class RegistrationController {

    private final AuthService authService;

    @Autowired
    public RegistrationController(AuthService authService) {
        this.authService = authService;
    }
    @CrossOrigin(origins = "https://monumentsinmacedonia.onrender.com")
    @PostMapping("/register")
    public ResponseEntity<String> registerUser(@RequestParam String username,
                                               @RequestParam String password,
                                               @RequestParam String repeatedPassword,
                                               @RequestParam String name,
                                               @RequestParam String surname) {
        try {
            User registeredUser = authService.register(username,password,repeatedPassword,name,surname);
            if(!Objects.equals(password, repeatedPassword)) {
               return ResponseEntity.ok().body("Registration failed: password doesnt match ");
            }else {
                DataHolder.users.add(registeredUser);
                return ResponseEntity.ok().body("ok");
            }
        } catch (Exception e) {
            return ResponseEntity.ok().body("Registration failed");
        }
    }
}

