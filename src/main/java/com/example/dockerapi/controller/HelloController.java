package com.example.dockerapi.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class HelloController {

  @GetMapping("/hello")
  public String sayHello() {
    return "Hello, Docker Worldaaabbb!";
  }
  @GetMapping("/hoge")
  public String sayHoge() {
    return "hogehogehoge";
  }
}
