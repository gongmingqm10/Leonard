package com.xg.arctic.model;

/**
 * User: gongming
 * Date: 7/25/14
 * Time: 9:23 AM
 * Email:gongmingqm10@foxmail.com
 */
public class User {

    private long id;
    private String userName;
    private String password;

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

}
