package com.greenart.school_management.controller;

import com.greenart.school_management.service.DashboardService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
    @Autowired DashboardService service;
    @GetMapping("/")
    public String getMain(Model model) {
        model.addAttribute("cnt", service.getCount());
        model.addAttribute("update", service.getUpdateDate());
        // model.addAttribute("value", 12345);
        // model.addAttribute("value", 123);
        return "/index";
    }
    
}
