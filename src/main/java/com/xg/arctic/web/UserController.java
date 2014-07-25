package com.xg.arctic.web;

import com.xg.arctic.model.User;
import com.xg.arctic.service.impl.UserServiceImpl;
import com.xg.arctic.util.MyBatisUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * User: gongming
 * Date: 7/25/14
 * Time: 9:31 AM
 * Email:gongmingqm10@foxmail.com
 */
@Controller
@RequestMapping("login")
public class UserController {

    private UserServiceImpl userService;

    public UserController() {
        userService = new UserServiceImpl(MyBatisUtil.getSqlSessionFactory());
    }

    @RequestMapping("/")
    public ModelAndView loadUserList(ModelMap map) {
        List<User> users = userService.findAllUser();
        map.put("users", users);
        return new ModelAndView("test", map);
    }

}
