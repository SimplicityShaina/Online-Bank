package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;



@RestController
public class HomeResources
{
//using get method and hello-world URI
@GetMapping(path="/hello-world")
public String helloWorld()
{
return "Hello World";
}
@GetMapping(path="/hello-world-bean")
//method- which returns "Hello World"
public HelloWorldBean helloWorldBean()
{
return new HelloWorldBean("Good Afternoon Essilor + Collabera!");//constructor of HelloWorldBean
}
}