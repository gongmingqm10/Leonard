package com.xg.arctic.model;

/**
 * User: gongming
 * Date: 7/31/14
 * Time: 9:40 AM
 * Email:gongmingqm10@foxmail.com
 */
public class Product {

    private long id;
    private String number;
    private String productName;
    private String type;
    private String subType;
    private String productInfo;
    private String productNews;
    private String images;
    private String colors;
    private String colorName;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getSubType() {
        return subType;
    }

    public void setSubType(String subType) {
        this.subType = subType;
    }

    public String getProductInfo() {
        return productInfo;
    }

    public void setProductInfo(String productInfo) {
        this.productInfo = productInfo;
    }

    public String getProductNews() {
        return productNews;
    }

    public void setProductNews(String productNews) {
        this.productNews = productNews;
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }

    public String getColors() {
        return colors;
    }

    public void setColors(String colors) {
        this.colors = colors;
    }

    public String getColorName() {
        return colorName;
    }

    public void setColorName(String colorName) {
        this.colorName = colorName;
    }
}
