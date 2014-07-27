package com.xg.arctic.web;

import com.xg.arctic.model.Video;
import com.xg.arctic.service.impl.FileServiceImpl;
import com.xg.arctic.util.MyBatisUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/")
public class HomeController {

    private FileServiceImpl fileService;

    public HomeController() {
        this.fileService=new FileServiceImpl(MyBatisUtil.getSqlSessionFactory());
    }

    @RequestMapping(method = RequestMethod.GET)
    public String home() {
        return "redirect:/home";
    }



    @RequestMapping("/home")
    public ModelAndView loadHomePage(ModelMap map) {
        List<Video> videos= fileService.findAllVideos();
        map.put("videos", videos);
        return new ModelAndView("home",map);
    }

}
