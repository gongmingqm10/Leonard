package com.xg.arctic.service;

import com.xg.arctic.model.ProductRE;

import java.util.List;

/**
 * Created by xu on 2014/8/6.
 */
public interface ProductREService {
    List<ProductRE> findAllProductREs();

    ProductRE findProductREById(long id);

    void updateFeatureById(long id, String feature);

    void updateParamById(long id, String param);

    ProductRE findProductREByProductId(long id);

    void updateViewById(long id, String url);
}
