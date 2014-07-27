package com.xg.arctic.web;

import com.xg.arctic.service.impl.FileServiceImpl;
import com.xg.arctic.util.MyBatisUtil;
import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/**
 * Created by minggong on 7/24/14.
 */
@Controller
@RequestMapping("video")
public class VideoController {

    private FileServiceImpl fileService;
    public VideoController() {
        this.fileService=new FileServiceImpl(MyBatisUtil.getSqlSessionFactory());;
    }

    @RequestMapping(value = {"/{videoId}"}, method = RequestMethod.GET)
    public String get(Model model) {
        return "video";
    }

    @RequestMapping(value = {"/delete"})
    public ModelAndView deleteById(ModelMap map,HttpServletRequest request){
        long id=Integer.parseInt(request.getParameter("id"));
        fileService.deleteVideoById(id);

        return new ModelAndView("redirect:/admin/video", map);
    }


}
