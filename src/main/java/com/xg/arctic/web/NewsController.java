package com.xg.arctic.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * User: gongming
 * Date: 7/28/14
 * Time: 4:10 PM
 * Email:gongmingqm10@foxmail.com
 */

@Controller
@RequestMapping("news")
public class NewsController {
    @RequestMapping("/")
    public ModelAndView loadNewsPage(ModelMap map) {
//        List<Dealer> dealers = dealerService.findAllDealer();
//        map.put("dealers", dealers);
        return new ModelAndView("news/newsList", map);
    }

    @RequestMapping("/newsDisplay")
    public ModelAndView displayNewsPage(ModelMap map) {
//        List<Dealer> dealers = dealerService.findAllDealer();
//        map.put("dealers", dealers);
        return new ModelAndView("news/newsDisplay", map);
    }


}
