package com.xg.arctic.web;

import com.xg.arctic.model.Product;
import com.xg.arctic.model.ProductRE;
import com.xg.arctic.service.impl.ProductREServiceImpl;
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
import java.text.SimpleDateFormat;

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
    private ProductREServiceImpl productREService;

    public ProductController() {
        this.productService =new ProductServiceImpl(MyBatisUtil.getSqlSessionFactory());
        this.productREService =new ProductREServiceImpl(MyBatisUtil.getSqlSessionFactory());
    }

    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    public @ResponseBody String[] uploadFile(MultipartHttpServletRequest request, ModelMap map){
        HttpSession session = request.getSession();
        ServletContext application  = session.getServletContext();
        String serverRealPath = application.getRealPath("/") ;

        String productName=request.getParameter("productName");
        String id=request.getParameter("id");
        Calendar cal = Calendar.getInstance();
        SimpleDateFormat sdf = new SimpleDateFormat("HH-mm-ss");
        String fileName =serverRealPath+ "/uploads/productPic/" + productName + sdf.format(cal.getTime()) +"-"+id + ".jpg";
        String[]  data=new String[2];
        data[0] = id;
        data[1] = "uploads/productPic/" + productName+ sdf.format(cal.getTime()) +"-"+id + ".jpg";

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

    @RequestMapping(value = "/uploadView", method = RequestMethod.POST)
    public @ResponseBody String[] uploadViewPic(MultipartHttpServletRequest request, ModelMap map){
        HttpSession session = request.getSession();
        ServletContext application  = session.getServletContext();
        String serverRealPath = application.getRealPath("/") ;

        String productName=request.getParameter("productName");
        String id=request.getParameter("id");
        Calendar cal = Calendar.getInstance();
        SimpleDateFormat sdf = new SimpleDateFormat("HH-mm-ss");
        String fileName =serverRealPath+ "/uploads/productView/"  +productName + sdf.format(cal.getTime()) +"-view"+id + ".jpg";
        String[]  data=new String[2];
        data[0] = id;
        data[1] = "uploads/productView/"  +productName + sdf.format(cal.getTime()) +"-view"+id + ".jpg";

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
    @RequestMapping(value = "/updateFeature", method = RequestMethod.POST)
    public ModelAndView updateProductFeature(ModelMap map,HttpServletRequest request) {
        long id=Integer.parseInt(request.getParameter("id"));
        String feature=request.getParameter("content");
        productREService.updateFeatureById(id, feature);
        return new ModelAndView("redirect:/admin/productFeature", map);
    }
    @RequestMapping(value = "/updateParam", method = RequestMethod.POST)
    public ModelAndView updateProductParam(ModelMap map,HttpServletRequest request) {
        long id=Integer.parseInt(request.getParameter("id"));
        String param=request.getParameter("content");
        productREService.updateParamById(id, param);
        return new ModelAndView("redirect:/admin/productParam", map);
    }
    @RequestMapping(value = "/updateView", method = RequestMethod.POST)
    public ModelAndView updateProductPView(ModelMap map,HttpServletRequest request) {
        long id=Integer.parseInt(request.getParameter("id"));
        String url=request.getParameter("url");
        productREService.updateViewById(id, url);
        return new ModelAndView("redirect:/admin/productView", map);
    }

    @RequestMapping(value = "/product/{productType}", method = RequestMethod.GET)
    public ModelAndView loadProductPage(@PathVariable("productType") String type, ModelMap map,HttpServletRequest request) {
        List<Product> productsOfType=productService.findProductsByType(type);
        Vector<String> productSubType = new Vector<String>();
        for(int i=0;i<productsOfType.size();i++){
             if(productSubType.indexOf(productsOfType.get(i).getSubType()) == -1 ){
                 productSubType.add(productsOfType.get(i).getSubType()) ;
             }
        }
        List<Product> products = productService.findAllProducts();
        map.put("type",type);
        map.put("products",products);
        map.put("productSubType",productSubType.toArray());
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

    @RequestMapping(value = "/productNews", method = RequestMethod.POST)
    public @ResponseBody String[] getProductNewsData(ModelMap map,HttpServletRequest request) {
        long id=Integer.parseInt(request.getParameter("id"));
        Product product = productService.findProductById(id);
        ProductRE productRE=productREService.findProductREByProductId(id);
        String[] views=productRE.getProductView().split("\\,");
        String viewStr="                  <div id=\"carousel-example-generic\" class=\"carousel slide\" data-ride=\"carousel\">\n" +
                "                    <!-- Indicators -->\n" +
                "                    <ol class=\"carousel-indicators\">\n" +
                "                      <li data-target=\"#carousel-example-generic\" data-slide-to=\"0\" class=\"active\"></li>\n" +
                "                      <li data-target=\"#carousel-example-generic\" data-slide-to=\"1\"></li>\n" +
                "                      <li data-target=\"#carousel-example-generic\" data-slide-to=\"2\"></li>\n" +
                "                      <li data-target=\"#carousel-example-generic\" data-slide-to=\"3\"></li>\n" +
                "                      <li data-target=\"#carousel-example-generic\" data-slide-to=\"4\"></li>\n" +
                "                    </ol>\n" +
                "                    <!-- Wrapper for slides -->\n" +
                "                    <div class=\"carousel-inner\" role=\"listbox\">\n";
        for(int i=0;i<views.length;i++){
            if(i==0) viewStr+="                      <div class=\"item active\">\n";
            else viewStr+="                      <div class=\"item\">\n";
            viewStr+="                        <img src=\""+ views[i]+"\" alt=\"...\">\n" +
                    "                        <div class=\"carousel-caption\">\n" +
                    "                        </div>\n" +
                    "                      </div>\n" ;
        }
        viewStr+="                    </div>\n" +
                "                    <!-- Controls -->\n" +
                "                    <a class=\"left carousel-control\" href=\"#carousel-example-generic\" role=\"button\" data-slide=\"prev\">\n" +
                "                      <span class=\"glyphicon glyphicon-chevron-left\"></span>\n" +
                "                      <span class=\"sr-only\">Previous</span>\n" +
                "                    </a>\n" +
                "                    <a class=\"right carousel-control\" href=\"#carousel-example-generic\" role=\"button\" data-slide=\"next\">\n" +
                "                      <span class=\"glyphicon glyphicon-chevron-right\"></span>\n" +
                "                      <span class=\"sr-only\">Next</span>\n" +
                "                    </a>\n" +
                "                  </div>";
        String[] str=new String[4];
        str[1]=viewStr;
        str[2]=productRE.getProductFeature();
        str[3]=productRE.getProductParam();
        return str;
    }

}
