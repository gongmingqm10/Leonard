package com.xg.arctic.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

    @RequestMapping("home")
    public String loadHomePage(Model m) {
        m.addAttribute("name", "Xuhuan");
        return "home";
    }
}
