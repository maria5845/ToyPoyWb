package com.toypoy.toypoywb.controller;

import com.toypoy.toypoywb.dao.MainDao;
import com.toypoy.toypoywb.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

    @Autowired
    MainService mainService;

    @RequestMapping(value = "/main.do", method = RequestMethod.GET)
    public String Main(Model model) {
        model.addAttribute("time", mainService.timeToString());
        return "index";
    }







}
