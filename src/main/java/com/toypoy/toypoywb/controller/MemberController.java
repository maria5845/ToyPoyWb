package com.toypoy.toypoywb.controller;

import com.toypoy.toypoywb.service.MainService;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MemberController {

    @Autowired
    MainService mainService;

    @RequestMapping(value="test.do",method = RequestMethod.GET)
    public @ResponseBody
    String getTestList(Model model) throws  Exception{
        JSONObject json = new JSONObject();

        try {
            json.put("list",mainService.selectLsit());
        }catch (Exception e){
            e.printStackTrace();
        }

        return json.toString();
    }




}
