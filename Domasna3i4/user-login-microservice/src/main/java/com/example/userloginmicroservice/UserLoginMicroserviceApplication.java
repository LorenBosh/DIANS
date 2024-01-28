package com.example.userloginmicroservice;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication(exclude = DataSourceAutoConfiguration.class)
public class UserLoginMicroserviceApplication {

    public static void main(String[] args) {
        SpringApplication.run(UserLoginMicroserviceApplication.class, args);
    }

}
