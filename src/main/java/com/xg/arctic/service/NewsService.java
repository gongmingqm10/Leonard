package com.xg.arctic.service;

import com.xg.arctic.model.News;

import java.util.List;

/**
 * User: gongming
 * Date: 7/29/14
 * Time: 9:01 AM
 * Email:gongmingqm10@foxmail.com
 */
public interface NewsService {

    public void createNews(String title, String content);

    public List<News> findAllNews();

    public News findNewsById(long id);

    public void deleteNewsById(long id);

    public void updateNewById(int id, String title, String content) ;
}
