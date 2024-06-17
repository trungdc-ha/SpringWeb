package com.example.dto;

import lombok.*;

import java.math.BigDecimal;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class Person {
    private int id;
    private String name;
    private int age;
    private BigDecimal salary;
}
