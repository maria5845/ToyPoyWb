package com.toypoy.toypoywb.bos.member;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
public class BoardController {

    /*
    @Value("${file.root.dir}")
    private String fileRootDir;
    */

    @RequestMapping(value={"/bos/boardList.do"},method = {RequestMethod.GET})
    public String boardList(Model model, HttpServletRequest request) throws  Exception{
        model.addAttribute("board_id",request.getParameter("board_id"));
        return "admin/board_list";
    }

}
