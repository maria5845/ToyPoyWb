package com.toypoy.toypoywb.bos.user;


import com.sun.org.apache.xpath.internal.operations.Mod;
import org.apache.tomcat.util.net.openssl.ciphers.Authentication;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.logging.Logger;

@Controller
@RequestMapping(value = "/bos")
public class UserController {

    /*
    @Value("나중에 사용할 메일 주소 ");
    private String mailUserName;
    */
    @RequestMapping(value = "/login.do", method = {RequestMethod.GET,RequestMethod.POST})
    public ModelAndView login(@RequestParam HashMap<String,Object> param) throws  Exception{
        ModelAndView mv  =  new ModelAndView();
        //Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        mv.setViewName("/bos/user/login");
        return mv;
    }
    @RequestMapping(value = "/loginX.do", method = RequestMethod.POST)
    public String loginX(Model model, @RequestParam HashMap<String, Object> param) throws Exception {
        //Spring Security 핸들러 처리함
        return "redirect:/";
    }
    @RequestMapping(value = "/logout.do", method = RequestMethod.GET)
    public String logout(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception{
        //Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        session.setAttribute("userInfo",null);
        /*
        if(!"anonymousUser".equals(auth.getPrincipal().toString())) {
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }*/
        return "redirect:/";
    }
    @RequestMapping(value = {"/user/userList.do"})
    public ModelAndView noranUserList(@RequestParam HashMap<String,Object> param)throws  Exception{
        ModelAndView mv = new ModelAndView();
        mv.addObject("type",param.get("type"));
        mv.setViewName("user/userList");
        return mv;
    }




}
