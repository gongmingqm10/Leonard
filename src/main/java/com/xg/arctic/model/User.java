package com.xg.arctic.model;

/**
 * User: gongming
 * Date: 7/25/14
 * Time: 9:23 AM
 * Email:gongmingqm10@foxmail.com
 */
public class User {

    private long id;
    private String name;
    private double price;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
