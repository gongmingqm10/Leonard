package com.xg.arctic.web;

import com.xg.arctic.model.Dealer;
import com.xg.arctic.service.impl.DealerServiceImpl;
import com.xg.arctic.util.MyBatisUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * User: gongming
 * Date: 7/24/14
 * Time: 2:34 PM
 * Email:gongmingqm10@foxmail.com
 */
@Controller
@RequestMapping("dealer")
public class DealerController {

    private DealerServiceImpl dealerService;

    public DealerController() {
        this.dealerService = new DealerServiceImpl(MyBatisUtil.getSqlSessionFactory());;
    }

    @RequestMapping("/")
    public ModelAndView loadDealerPage(ModelMap map) {
        List<Dealer> dealers = dealerService.findAllDealer();
        map.put("dealers", dealers);
        return new ModelAndView("dealer/dealer", map);
    }


}
