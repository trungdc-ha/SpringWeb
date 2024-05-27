package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/signature")
public class UploadImage {

    @GetMapping
    public String showU() {
        System.out.println("Hello");
        return "home";
    }
}
