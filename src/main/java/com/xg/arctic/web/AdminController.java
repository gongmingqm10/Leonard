package com.xg.arctic.web;

import com.xg.arctic.model.Dealer;
import com.xg.arctic.model.Video;
import com.xg.arctic.service.DealerService;
import com.xg.arctic.service.FileService;
import com.xg.arctic.service.impl.DealerServiceImpl;
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

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URL;
import java.util.List;

/**
 * Created by minggong on 7/26/14.
 */

@Controller
@RequestMapping("admin")
public class AdminController {

    private DealerService dealerService;
    private FileService fileService;

    public AdminController() {
        dealerService = new DealerServiceImpl(MyBatisUtil.getSqlSessionFactory());
        fileService = new FileServiceImpl(MyBatisUtil.getSqlSessionFactory());
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
    public ModelAndView loadVideoPage(ModelMap map) {
        List<Video> videos = fileService.findAllVideos();
        map.put("videos", videos);
        return new ModelAndView("backend/video", map);
    }

    @RequestMapping(value = "/video/create", method = RequestMethod.GET)
    public String loadVideoCreatePage(Model model) {
        return "video/create";
    }

    @RequestMapping(value = "/video/create", method = RequestMethod.POST)
    public ModelAndView createVideo(ModelMap map, HttpServletRequest request) {
        String name = request.getParameter("name");
        String image = request.getParameter("image");
        String source = request.getParameter("source");
        String filesize = request.getParameter("filesize");
        Video video = new Video();
        video.setFilename(name);
        video.setSource(source);
        video.setImage(image);
        if (filesize != null && !filesize.equals("")) video.setFilesize(Integer.parseInt(filesize));
        fileService.createVideo(video);
        map.put("message", "视频保存成功");
        return new ModelAndView("video/create", map);
    }

    @RequestMapping(value = "/video/upload", method = RequestMethod.POST)
    public ModelAndView uploadFile(HttpServletRequest request,@RequestParam MultipartFile file,@RequestParam MultipartFile picture, ModelMap map) {

//        String path = request.getContextPath();
//        String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
//        String rootPath = System.getProperty("usr.dir");
//        URL rootPath = AdminController.class.getResource("");
        HttpSession session = request.getSession();
        ServletContext  application  = session.getServletContext();
        String serverRealPath = application.getRealPath("/") ;


        String filename =serverRealPath+ "/uploads/" + file.getOriginalFilename();
        String picName =serverRealPath+ "/uploads/picture/" + picture.getOriginalFilename();
        File copy = new File (filename);
        try {
            BufferedOutputStream stream =
                    new BufferedOutputStream(new FileOutputStream(copy));
            IOUtils.write(file.getBytes(), stream);
            stream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        File copyPic = new File (picName);
        try {
            BufferedOutputStream stream =
                    new BufferedOutputStream(new FileOutputStream(copyPic));
            IOUtils.write(picture.getBytes(), stream);
            stream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        map.put("url", "uploads/" + file.getOriginalFilename());
        map.put("picUrl","uploads/picture/" + picture.getOriginalFilename() );
        map.put("size", file.getSize());
        map.put("message", "文件上传成功");
        return new ModelAndView("video/create", map);
    }
}
