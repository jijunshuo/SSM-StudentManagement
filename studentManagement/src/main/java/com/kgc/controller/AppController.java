package com.kgc.controller;

import com.kgc.pojo.Studentinfo;
import com.kgc.service.StudentinfoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class AppController {
    @Resource
    StudentinfoService studentinfoService;

    @RequestMapping("/")
    public String index(Model model) {
        List<Studentinfo> studentinfos = studentinfoService.selectAll();
        model.addAttribute("studentinfos", studentinfos);
        return "index";
    }

    @RequestMapping("/toupd")
    public String toupd(Integer id, Model model) {
        Studentinfo studentinfo = studentinfoService.selectByid(id);
        model.addAttribute("studentinfo", studentinfo);
        return "upd";
    }

    @RequestMapping("/doupd")
    public String doupd(Studentinfo studentinfo, HttpSession session) {
        int upd = studentinfoService.upd(studentinfo);
        if (upd > 0) {
            session.setAttribute("success", "更新成功");
        } else {
            session.setAttribute("success", "更新失败");
        }
        return "redirect:/";
    }
}
