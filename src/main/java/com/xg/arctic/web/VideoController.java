package com.xg.arctic.web;

import com.xg.arctic.model.Video;
import com.xg.arctic.service.impl.FileServiceImpl;
import com.xg.arctic.util.MyBatisUtil;
import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
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
import java.nio.file.*;

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

    @RequestMapping(value = {""}, method = RequestMethod.GET)
    public String loadVideoPage(Model model) {
        return "video";
    }

    @RequestMapping(value = {"/play/{videoId}"}, method = RequestMethod.GET)
    public ModelAndView playVideoById(@PathVariable("videoId") String videoId, ModelMap map,HttpServletRequest request) {
        long id = Integer.parseInt(videoId);
        Video video = fileService.findVideoById(id);
        map.put("video", video);
        return new ModelAndView("video", map);
    }


    @RequestMapping(value = {"/delete"})
    public ModelAndView deleteById(ModelMap map,HttpServletRequest request){
        long id=Integer.parseInt(request.getParameter("id"));
        Video video=fileService.findVideoById(id);
        Path path= FileSystems.getDefault().getPath("src/main/webapp/",video.getSource());
        try {
            Files.deleteIfExists(path);
        } catch (NoSuchFileException x) {
            System.err.format("%s: no such" + " file or directory%n", path);
        } catch (DirectoryNotEmptyException x) {
            System.err.format("%s not empty%n", path);
        } catch (IOException x) {
            // File permission problems are caught here.
            System.err.println(x);
        }
        path= FileSystems.getDefault().getPath("src/main/webapp/",video.getImage());
        try {
            Files.deleteIfExists(path);
        } catch (NoSuchFileException x) {
            System.err.format("%s: no such" + " file or directory%n", path);
        } catch (DirectoryNotEmptyException x) {
            System.err.format("%s not empty%n", path);
        } catch (IOException x) {
            // File permission problems are caught here.
            System.err.println(x);
        }

        fileService.deleteVideoById(id);

        return new ModelAndView("redirect:/admin/video", map);
    }


}
