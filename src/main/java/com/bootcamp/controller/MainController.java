package com.bootcamp.controller;

import org.jboss.logging.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
    public static final Logger logger = Logger.getLogger(EmployeeController.class);

    public MainController(){
        System.out.println("MainController");
    }

    @RequestMapping(value = "/")
    public String LandingPage(){
        return "index";
    }
}
