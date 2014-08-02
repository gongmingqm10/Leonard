package com.xg.arctic.web;

import com.xg.arctic.model.Product;
import com.xg.arctic.service.impl.ProductServiceImpl;
import com.xg.arctic.util.MyBatisUtil;
import org.apache.commons.fileupload.FileUpload;
import org.apache.commons.io.IOUtils;
import org.apache.commons.logging.Log;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.*;

/**
 * User: gongming
 * Date: 7/31/14
 * Time: 9:46 AM
 * Email:gongmingqm10@foxmail.com
 */
@Controller
@RequestMapping("product")
public class ProductController {

    private ProductServiceImpl productService;

    public ProductController() {
        this.productService =new ProductServiceImpl(MyBatisUtil.getSqlSessionFactory());
    }

    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    public @ResponseBody String[] uploadFile(MultipartHttpServletRequest request, ModelMap map){
        HttpSession session = request.getSession();
        ServletContext application  = session.getServletContext();
        String serverRealPath = application.getRealPath("/") ;

        String productName=request.getParameter("productName");
        String id=request.getParameter("id");
        String fileName =serverRealPath+ "/uploads/productPic/" + productName+"-"+id + ".jpg";
        String[]  data=new String[2];
        data[0] = id;
        data[1] = "uploads/productPic/" + productName+"-"+id + ".jpg";

        //1. get the files from the request object
        Iterator<String> itr =  request.getFileNames();
        MultipartFile mpf = request.getFile(itr.next());
        File copy = new File (fileName);
        try {
            BufferedOutputStream stream =
                    new BufferedOutputStream(new FileOutputStream(copy));
            IOUtils.write(mpf.getBytes(), stream);
            stream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

        return data;
}

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public ModelAndView loadNewsCreatePage(ModelMap map,HttpServletRequest request) {

        String id=request.getParameter("id");
        String number= request.getParameter("number");
        String productName= request.getParameter("productName");
        String type=request.getParameter("type");
        String subType=request.getParameter("subType");
        String productInfo=request.getParameter("productInfo");
        String color1=request.getParameter("color1");
        String color2=request.getParameter("color2");
        String color3=request.getParameter("color3");
        String color4=request.getParameter("color4");
        String color5=request.getParameter("color5");
        String colors=color1+","+color2+","+color3+","+color4+","+color5;
        String colorName=request.getParameter("colorName");
        String url=request.getParameter("url");
        map.put("number",number);
        map.put("productName",productName);
        map.put("type",type);
        map.put("subType",subType);
        map.put("productInfo",productInfo);
        map.put("colors",colors);
        map.put("colorName",colorName);
        map.put("url",url);
        if(id.equals("-1")) {
            productService.addProduct(number, productName, type, subType, productInfo, colors, colorName, url);
        }
        else productService.updateProduct(id, number, productName, type, subType, productInfo, colors, colorName, url);
        return new ModelAndView("redirect:/admin/product",map);
    }

    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public ModelAndView deleteProduct(ModelMap map,HttpServletRequest request) {
        long id=Integer.parseInt(request.getParameter("id"));
        productService.deleteProductById(id);
        return new ModelAndView("redirect:/admin/product", map);
    }

    @RequestMapping(value = "/updateNews", method = RequestMethod.POST)
    public ModelAndView updateProductNews(ModelMap map,HttpServletRequest request) {
        long id=Integer.parseInt(request.getParameter("id"));
        String describe=request.getParameter("content");
        productService.updateDescribeById(id,describe);
        return new ModelAndView("redirect:/admin/productNews", map);
    }

    @RequestMapping(value = "/product/{productType}", method = RequestMethod.GET)
    public ModelAndView loadProductPage(@PathVariable("productType") String type, ModelMap map,HttpServletRequest request) {
        List<Product> productsOfType=productService.findProductsByType(type);
        Vector<String> productType = new Vector<String>();
        for(int i=0;i<productsOfType.size();i++){
             if(productType.indexOf(productsOfType.get(i).getSubType()) == -1 ){
                 productType.add(productsOfType.get(i).getSubType()) ;
             }
        }
        List<Product> products = productService.findAllProducts();
        map.put("products",products);
        map.put("productType",productType.toArray());
        map.put("productsOfType",productsOfType);
        return new ModelAndView("product/product", map);
    }
    @RequestMapping(value = "/productNews/{productId}", method = RequestMethod.GET)
    public ModelAndView loadProductNewsPage(@PathVariable("productId") String productId, ModelMap map,HttpServletRequest request) {
        Product product=productService.findProductById(Integer.parseInt(productId));
        List<Product> products = productService.findAllProducts();
        map.put("products",products);
        map.put("product",product);
        return new ModelAndView("product/productNews", map);
    }
}
