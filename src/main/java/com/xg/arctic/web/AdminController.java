package com.xg.arctic.web;

import com.xg.arctic.model.Dealer;
import com.xg.arctic.service.impl.DealerServiceImpl;
import com.xg.arctic.util.MyBatisUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by minggong on 7/26/14.
 */

@Controller
@RequestMapping("admin")
public class AdminController {

    private DealerServiceImpl dealerService;

    public AdminController() {
        dealerService = new DealerServiceImpl(MyBatisUtil.getSqlSessionFactory());

    }

    @RequestMapping(method = RequestMethod.GET)
    public String loadAdminPage(Model m) {
        //TODO check if current user is available
        return "redirect:/admin/dealer";
    }

    @RequestMapping(value = "/dealer", method = RequestMethod.GET)
    public ModelAndView loadDealerPage(ModelMap map) {
        List<Dealer> dealers = dealerService.findAllDealer();
        map.put("dealers", dealers);
        return new ModelAndView("backend/dealer",map);
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
