package com.xg.arctic.web;

import com.xg.arctic.model.Dealer;
import com.xg.arctic.model.User;
import com.xg.arctic.service.impl.DealerServiceImpl;
import com.xg.arctic.service.impl.UserServiceImpl;
import com.xg.arctic.util.MyBatisUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * User: gongming
 * Date: 7/25/14
 * Time: 9:31 AM
 * Email:gongmingqm10@foxmail.com
 */
@Controller
public class LoginController {

    private UserServiceImpl userService;
    private DealerServiceImpl dealerService;

    public LoginController() {
        userService = new UserServiceImpl(MyBatisUtil.getSqlSessionFactory());
        dealerService = new DealerServiceImpl(MyBatisUtil.getSqlSessionFactory());
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView loadLoginPage(ModelMap map){
        return new ModelAndView("backend/login", map);
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView userLogin(ModelMap map,HttpServletRequest request){
        String userName=request.getParameter("userName");
        String password=request.getParameter("password");
        String str="用户密码错误！";
        List<User> users=userService.findUserByName(userName);
        if(users.isEmpty()) str="用户名不存在！";
        else if(users.get(0).getPassword().equals(password)) {
            List<Dealer> dealers = dealerService.findAllDealer();
            map.put("dealers", dealers);
            return new ModelAndView("redirect:/admin", map);
        }

        map.put("str",str)  ;
        return new ModelAndView("backend/login", map);
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public ModelAndView logout(ModelMap map){
        //TODO clear the current user info in backend or frontend cache
        return new ModelAndView("redirect:/login");
    }

}
