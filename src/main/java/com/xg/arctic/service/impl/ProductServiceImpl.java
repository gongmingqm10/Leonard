package com.xg.arctic.service.impl;

import com.xg.arctic.mappers.ProductMapper;
import com.xg.arctic.mappers.ProductREMapper;
import com.xg.arctic.model.Product;
import com.xg.arctic.service.ProductService;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.ArrayList;
import java.util.List;

/**
 * User: gongming
 * Date: 7/31/14
 * Time: 9:45 AM
 * Email:gongmingqm10@foxmail.com
 */
public class ProductServiceImpl implements ProductService{

    private SqlSessionFactory factory;

    public ProductServiceImpl(SqlSessionFactory factory) {
        this.factory = factory;
    }

    @Override
    public void addProduct(String number, String productName, String type, String subType, String productInfo, String colors, String colorName, String url) {
        SqlSession session = factory.openSession();
        try {
            ProductMapper productMapper = session.getMapper(ProductMapper.class);
            ProductREMapper productREMapper = session.getMapper(ProductREMapper.class);
            productMapper.addProduct(number, productName, type, subType, productInfo, colors, colorName, url);
            session.commit();
            Product product=productMapper.findProductsByName(productName).get(0);
            productREMapper.addProductRE(product.getId(), productName);
            session.commit();
        } finally {

        }
    }

    @Override
    public List<Product> findAllProducts() {
        List<Product> products = new ArrayList<Product>();
        SqlSession session = factory.openSession();
        try{
            ProductMapper productMapper = session.getMapper(ProductMapper.class);
            products = productMapper.findAllProducts();
        } finally {
            session.close();
        }
        return products;
    }

    @Override
    public void deleteProductById(long id) {
        SqlSession session = factory.openSession();
        try{
            ProductREMapper productREMapper = session.getMapper(ProductREMapper.class);
            ProductMapper productMapper = session.getMapper(ProductMapper.class);

            productREMapper.deleteProductREByProductId(id);
            session.commit();
            productMapper.deleteProductById(id);
            session.commit();

        } finally {
            session.close();
        }
    }

    @Override
    public Product findProductById(long id) {
        Product product = new Product();
        SqlSession session = factory.openSession();
        try{
            ProductMapper productMapper = session.getMapper(ProductMapper.class);
            product = productMapper.findProductById(id);
        } finally {
            session.close();
        }
        return product;
    }

    @Override
    public void updateDescribeById(long id, String describe) {
        SqlSession session = factory.openSession();
        try{
            ProductMapper productMapper = session.getMapper(ProductMapper.class);
            productMapper.updateDescribeById(id, describe);
            session.commit();
        } finally {
            session.close();
        }
    }

    @Override
    public void updateProduct(String id, String number, String productName, String type, String subType, String productInfo, String colors, String colorName, String url) {
        SqlSession session = factory.openSession();
        try{
            ProductMapper productMapper = session.getMapper(ProductMapper.class);
            productMapper.updateProduct(id, number, productName, type, subType, productInfo, colors, colorName, url);
            session.commit();
        } finally {
            session.close();
        }
    }

    @Override
    public List<Product> findProductsByType(String type) {
        List<Product> products = new ArrayList<Product>();
        SqlSession session = factory.openSession();
        try{
            ProductMapper productMapper = session.getMapper(ProductMapper.class);
            products = productMapper.findProductsByType(type);
        } finally {
            session.close();
        }
        return products;
    }

    @Override
    public List<Product> findProductByName(String productName) {
        List<Product> products = new ArrayList<Product>();
        SqlSession session = factory.openSession();
        try{
            ProductMapper productMapper = session.getMapper(ProductMapper.class);
            products = productMapper.findProductsByName(productName);
        } finally {
            session.close();
        }
        return products;
    }
}
