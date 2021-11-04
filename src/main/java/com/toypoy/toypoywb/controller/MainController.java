package com.toypoy.toypoywb.controller;

import com.toypoy.toypoywb.dao.MainDao;
import com.toypoy.toypoywb.service.MainService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

    @Autowired
    MainService mainService;

    private static final Logger logger = LogManager.getLogger(MainController.class);

    @RequestMapping(value = "/main.do", method = RequestMethod.GET)
    public String Main(Model model) {
        model.addAttribute("time", mainService.timeToString());
        return "main";
    }



}
