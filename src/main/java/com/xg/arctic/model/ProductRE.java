package com.xg.arctic.model;

/**
 * User: gongming
 * Date: 7/31/14
 * Time: 9:40 AM
 * Email:gongmingqm10@foxmail.com
 */
public class ProductRE {

    private long id;
    private String productView;
    private String productParam;
    private String productFeature;
    private long productId;
    private String productName;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getProductView() {
        return productView;
    }

    public void setProductView(String productView) {
        this.productView = productView;
    }

    public String getProductParam() {
        return productParam;
    }

    public void setProductParam(String productParam) {
        this.productParam = productParam;
    }

    public String getProductFeature() {
        return productFeature;
    }

    public void setProductFeature(String productFeature) {
        this.productFeature = productFeature;
    }

    public long getProductId() {
        return productId;
    }

    public void setProductId(long productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }
}
