package com.xg.arctic.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * User: gongming
 * Date: 7/24/14
 * Time: 2:34 PM
 * Email:gongmingqm10@foxmail.com
 */
@Controller
@RequestMapping("dealer")
public class DealerController {

    @RequestMapping("/")
    public String loadDealerPage(Model m) {
        return "dealer/dealer";
    }


}
