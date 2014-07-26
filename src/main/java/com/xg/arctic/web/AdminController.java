package com.xg.arctic.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by minggong on 7/26/14.
 */

@Controller
@RequestMapping("admin")
public class AdminController {

    @RequestMapping(method = RequestMethod.GET)
    public String loadAdminPage(Model m) {
        //TODO check if current user is available
        return "redirect:/admin/dealer";
    }

    @RequestMapping(value = "/dealer", method = RequestMethod.GET)
    public String loadDealerPage(Model m) {
        return "backend/dealer";
    }

    @RequestMapping(value = "/activity", method = RequestMethod.GET)
    public String loadActivityPage(Model m) {
        return "backend/activity";
    }

    @RequestMapping(value = "/news", method = RequestMethod.GET)
    public String loadNewsPage(Model m) {
        return "backend/news";
    }

    @RequestMapping(value = "/product", method = RequestMethod.GET)
    public String loadProductPage(Model m) {
        return "backend/product";
    }

    @RequestMapping(value = "/video", method = RequestMethod.GET)
    public String loadVideoPage(Model m) {
        return "backend/video";
    }

}
