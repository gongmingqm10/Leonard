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

import javax.servlet.http.HttpServletRequest;
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

    @RequestMapping(value = {"/search"})
    public ModelAndView searchByProvince(ModelMap map,HttpServletRequest request) {
        String province=request.getParameter("province");
        List<Dealer> dealers;
        if(province.equals("请选择一个省份"))
            dealers = dealerService.findAllDealer();
        else dealers = dealerService.findDealerByProvince(province);
        map.put("dealers", dealers);
        return new ModelAndView("dealer/dealer", map);
    }
    @RequestMapping(value = {"/delete"})
    public ModelAndView deleteById(ModelMap map,HttpServletRequest request){
        long id=Integer.parseInt(request.getParameter("id"));
        dealerService.deleteDealerById(id);
        List<Dealer> dealers = dealerService.findAllDealer();
        map.put("dealers", dealers);
        return new ModelAndView("backend/admin", map);
    }
    @RequestMapping(value = {"/update"})
    public ModelAndView updateById(ModelMap map,HttpServletRequest request){
        long id=Integer.parseInt(request.getParameter("id"));
        String dealer=request.getParameter("dealer");
        String type=request.getParameter("type");
        String saler=request.getParameter("saler");
        String phone=request.getParameter("phone");
        String address=request.getParameter("address");
        dealerService.updateDealerById(id,dealer,type,saler,phone,address);
        List<Dealer> dealers = dealerService.findAllDealer();
        map.put("dealers", dealers);
        return new ModelAndView("backend/admin", map);
    }

    @RequestMapping(value = {"/add"})
    public ModelAndView add(ModelMap map,HttpServletRequest request){
        String dealer=request.getParameter("dealer");
        String type=request.getParameter("type");
        String saler=request.getParameter("saler");
        String phone=request.getParameter("phone");
        String address=request.getParameter("address");
        String province=request.getParameter("province");
        dealerService.addDealer(dealer,type,saler,phone,address,province);
        List<Dealer> dealers = dealerService.findAllDealer();
        map.put("dealers", dealers);
        return new ModelAndView("backend/admin", map);
    }



}
