package com.xg.arctic.model;

import java.util.Date;

/**
 * User: gongming
 * Date: 7/29/14
 * Time: 8:57 AM
 * Email:gongmingqm10@foxmail.com
 */
public class News {
    private long id;
    private String title;
    private String content;
    private String date;
    private long scan;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public long getScan() {
        return scan;
    }

    public void setScan(long scan) {
        this.scan = scan;
    }
}
