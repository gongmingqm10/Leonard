package com.xg.arctic.service;

import com.xg.arctic.model.Product;

import java.util.List;

/**
 * User: gongming
 * Date: 7/31/14
 * Time: 9:45 AM
 * Email:gongmingqm10@foxmail.com
 */
public interface ProductService {

    public void addProduct(String number, String productName, String type, String subType, String productInfo, String colors, String colorName, String url);

    List<Product> findAllProducts();

    void deleteProductById(long id);

    Product findProductById(long id);

    void updateDescribeById(long id, String describe);

    void updateProduct(String id, String number, String productName, String type, String subType, String productInfo, String colors, String colorName, String url);

}
