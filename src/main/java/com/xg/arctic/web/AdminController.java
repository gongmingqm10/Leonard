package com.xg.arctic.web;

import com.xg.arctic.model.*;
import com.xg.arctic.service.*;
import com.xg.arctic.service.impl.*;
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

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

/**
 * Created by minggong on 7/26/14.
 */

@Controller
@RequestMapping("admin")
public class AdminController {

    private DealerService dealerService;
    private FileService fileService;
    private NewsService newsService;
    private ProductService productService;
    private ProductREService productREService;

    public AdminController() {
        dealerService = new DealerServiceImpl(MyBatisUtil.getSqlSessionFactory());
        fileService = new FileServiceImpl(MyBatisUtil.getSqlSessionFactory());
        newsService = new NewsServiceImpl(MyBatisUtil.getSqlSessionFactory());
        productService = new ProductServiceImpl(MyBatisUtil.getSqlSessionFactory());
        productREService = new ProductREServiceImpl(MyBatisUtil.getSqlSessionFactory());
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

    @RequestMapping(value = "/news", method = RequestMethod.GET)
    public ModelAndView loadNewsPage(ModelMap map) {
        List<News> newsList = newsService.findAllNews();

        map.put("newsList", newsList);
        return new ModelAndView("backend/news",map);
    }

    @RequestMapping(value = "/product", method = RequestMethod.GET)
    public ModelAndView loadProductPage(ModelMap map) {
        List<Product> products=productService.findAllProducts();
        map.put("products",products);
        return new ModelAndView("backend/product",map);
    }

    @RequestMapping(value = "/productNews", method = RequestMethod.GET)
    public ModelAndView loadProductNewsPage(ModelMap map) {
        List<Product> products=productService.findAllProducts();
        map.put("products",products);
        return new ModelAndView("backend/productNews",map);
    }

    @RequestMapping(value = "/productFeature", method = RequestMethod.GET)
    public ModelAndView loadProductFeature(ModelMap map) {
        List<ProductRE> productREs=productREService.findAllProductREs();
        map.put("productREs",productREs);
        return new ModelAndView("backend/productFeature",map);
    }

    @RequestMapping(value = "/productView", method = RequestMethod.GET)
    public ModelAndView loadProductView(ModelMap map) {
        List<ProductRE> productREs=productREService.findAllProductREs();
        map.put("productREs",productREs);
        return new ModelAndView("backend/productView",map);
    }

    @RequestMapping(value = "/productParam", method = RequestMethod.GET)
    public ModelAndView loadProductParam(ModelMap map) {
        List<ProductRE> productREs=productREService.findAllProductREs();
        map.put("productREs",productREs);
        return new ModelAndView("backend/productParam",map);
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
        return new ModelAndView("backend/video", map);
    }

    @RequestMapping(value = "/video/upload", method = RequestMethod.POST)
    public ModelAndView uploadFile(HttpServletRequest request,@RequestParam MultipartFile file,@RequestParam MultipartFile picture, ModelMap map) {

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

    @RequestMapping(value = "/news/create", method = RequestMethod.GET)
    public String loadNewsCreatePage(Model model) {
        return "backend/createNews";
    }

    @RequestMapping(value = "/news/edit/{newsId}", method = RequestMethod.GET)
    public ModelAndView editNews(@PathVariable("newsId") String newsId, ModelMap map,HttpServletRequest request) {
        long id=Integer.parseInt(newsId);
        News news = newsService.findNewsById(id);
        map.put("news", news);
        return new ModelAndView("backend/createNews", map);
    }

    @RequestMapping(value = "/product/create", method = RequestMethod.GET)
    public String loadProductCreatePage(Model model) {
        return "backend/createProduct";
    }

    @RequestMapping(value = "/product/edit/{productId}", method = RequestMethod.GET)
    public ModelAndView editProduct(@PathVariable("productId") String newsId, ModelMap map,HttpServletRequest request) {
        long id=Integer.parseInt(newsId);
        Product product = productService.findProductById(id);
        map.put("product", product);
        return new ModelAndView("backend/createProduct", map);
    }
    @RequestMapping(value = "/productNews/editNews/{productId}", method = RequestMethod.GET)
    public ModelAndView editProductNews(@PathVariable("productId") String newsId, ModelMap map,HttpServletRequest request) {
        long id=Integer.parseInt(newsId);
        Product product = productService.findProductById(id);
        map.put("product", product);
        return new ModelAndView("backend/editProductNews", map);
    }
    @RequestMapping(value = "/productFeature/editFeature/{productREId}", method = RequestMethod.GET)
    public ModelAndView editProductFeature(@PathVariable("productREId") String newsId, ModelMap map,HttpServletRequest request) {
        long id=Integer.parseInt(newsId);
        ProductRE productRE = productREService.findProductREById(id);
        map.put("productRE", productRE);
        return new ModelAndView("backend/editProductFeature", map);
    }
    @RequestMapping(value = "/productParam/editParam/{productREId}", method = RequestMethod.GET)
    public ModelAndView editProductParam(@PathVariable("productREId") String newsId, ModelMap map,HttpServletRequest request) {
        long id=Integer.parseInt(newsId);
        ProductRE productRE = productREService.findProductREById(id);
        map.put("productRE", productRE);
        return new ModelAndView("backend/editProductParam", map);
    }
    @RequestMapping(value = "/productView/editView/{productREId}", method = RequestMethod.GET)
    public ModelAndView editProductView(@PathVariable("productREId") String newsId, ModelMap map,HttpServletRequest request) {
        long id=Integer.parseInt(newsId);
        ProductRE productRE = productREService.findProductREById(id);
        map.put("productRE", productRE);
        return new ModelAndView("backend/editProductView", map);
    }
}
