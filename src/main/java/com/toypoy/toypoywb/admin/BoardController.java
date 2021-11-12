package com.toypoy.toypoywb.admin;

import lombok.Value;
import org.json.simple.JSONObject;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.HashMap;

@Controller
public class BoardController {

    /*
    @Value("${file.root.dir}")
    private String fileRootDir;
     */

    @RequestMapping(value={"/admin/boardList.do"},method = {RequestMethod.GET})
    public String boardList(Model model, HttpServletRequest request) throws  Exception{
        model.addAttribute("board_id",request.getParameter("board_id"));
        return "admin/board_list";
    }

    /*
    @RequestMapping(value = "/board/getBoardList.do", method = {RequestMethod.POST, RequestMethod.GET})
    public @ResponseBody String getBoardList(@RequestParam HashMap<String, Object> param) throws Exception {
        JSONObject json = new JSONObject();

        try {
            String filePath = fileRootDir + "/board/boardList.json";

            File file = new File(filePath);

            if(!file.exists()) {
                boardService.makeJson();
            }

            int total = boardService.getBoardCount(param);
            List<Map<String, Object>> boardList = boardService.getBoardList(param);
            json.put("total", total);
            json.put("boardList", boardList);
            json.put("list", FileUtils.readFileToString(file));
            json.put("success", true);

        }catch(Exception e) {
            json.put("success", false);
            json.put("message", e.getMessage());
        }

        return json.toString();
    }
   */



}
