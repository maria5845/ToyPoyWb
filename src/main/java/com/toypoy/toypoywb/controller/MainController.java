package com.toypoy.toypoywb.controller;

import com.toypoy.toypoywb.service.MainService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;

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


    @RequestMapping(value = "/login.do", method = {RequestMethod.GET, RequestMethod.POST})
    public String login(Model model, @RequestParam HashMap<String, Object> param) throws Exception {
        return "login";
    }

    @RequestMapping(value = "/loginX.do", method = RequestMethod.POST)
    public String loginX(Model model, @RequestParam HashMap<String, Object> param) throws Exception {

        return "redirect:/";
    }

}
