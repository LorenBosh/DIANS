package com.example.userloginmicroservice.model.exceptions;

public class InvalidArgumentsException extends RuntimeException{
    public InvalidArgumentsException(){
        super("Invalid arguments exception");
    }
}
