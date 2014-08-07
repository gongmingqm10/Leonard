package com.xg.arctic.service.impl;

import com.xg.arctic.mappers.ProductREMapper;
import com.xg.arctic.model.ProductRE;
import com.xg.arctic.service.ProductREService;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by xu on 2014/8/6.
 */
public class ProductREServiceImpl implements ProductREService {
    private SqlSessionFactory factory;

    public ProductREServiceImpl(SqlSessionFactory factory) {
        this.factory = factory;
    }

    @Override
    public List<ProductRE> findAllProductREs() {
        List<ProductRE> productREs = new ArrayList<ProductRE>();
        SqlSession session = factory.openSession();
        try{
            ProductREMapper productMapper = session.getMapper(ProductREMapper.class);
            productREs = productMapper.findAllProductREs();
        } finally {
            session.close();
        }
        return productREs;
    }

    @Override
    public ProductRE findProductREById(long id) {
        ProductRE productRE = new ProductRE();
        SqlSession session = factory.openSession();
        try{
            ProductREMapper productMapper = session.getMapper(ProductREMapper.class);
            productRE = productMapper.findProductREById(id);
        } finally {
            session.close();
        }
        return productRE;
    }

    @Override
    public ProductRE findProductREByProductId(long id) {
        ProductRE productRE = new ProductRE();
        SqlSession session = factory.openSession();
        try{
            ProductREMapper productMapper = session.getMapper(ProductREMapper.class);
            productRE = productMapper.findProductREByProductId(id);
        } finally {
            session.close();
        }
        return productRE;
    }

    @Override
    public void updateFeatureById(long id, String feature) {
        SqlSession session = factory.openSession();
        try{
            ProductREMapper productREMapper = session.getMapper(ProductREMapper.class);
            productREMapper.updateFeatureById(id, feature);
            session.commit();
        } finally {
            session.close();
        }
    }

    @Override
    public void updateParamById(long id, String param) {
        SqlSession session = factory.openSession();
        try{
            ProductREMapper productREMapper = session.getMapper(ProductREMapper.class);
            productREMapper.updateParamById(id, param);
            session.commit();
        } finally {
            session.close();
        }
    }

    @Override
    public void updateViewById(long id, String url) {
        SqlSession session = factory.openSession();
        try{
            ProductREMapper productREMapper = session.getMapper(ProductREMapper.class);
            productREMapper.updateViewById(id, url);
            session.commit();
        } finally {
            session.close();
        }
    }
}
