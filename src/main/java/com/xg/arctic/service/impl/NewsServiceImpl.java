package com.xg.arctic.service.impl;

import com.xg.arctic.mappers.NewsMapper;
import com.xg.arctic.model.News;
import com.xg.arctic.service.NewsService;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

/**
 * User: gongming
 * Date: 7/29/14
 * Time: 9:01 AM
 * Email:gongmingqm10@foxmail.com
 */
public class NewsServiceImpl implements NewsService{
    private SqlSessionFactory factory;

    public NewsServiceImpl(SqlSessionFactory factory) {
        this.factory = factory;
    }

    @Override
    public void createNews(String title, String content) {
        SqlSession session = factory.openSession();
        try {
            NewsMapper mapper = session.getMapper(NewsMapper.class);
            mapper.createNews(title, content);
            session.commit();
        } finally {
            session.close();
        }
    }

    @Override
    public List<News> findAllNews() {

        SqlSession session = factory.openSession();
        try {
            NewsMapper mapper = session.getMapper(NewsMapper.class);
            List<News> newsList=mapper.findAllNews();
            return newsList;
        } finally {
            session.close();
        }
    }

    @Override
    public News findNewsById(long id) {
        SqlSession session = factory.openSession();
        try {
            NewsMapper mapper = session.getMapper(NewsMapper.class);
            News news=mapper.findNewsById(id);
            return news;
        } finally {
            session.close();
        }
    }

    @Override
    public void deleteNewsById(long id) {
        SqlSession session = factory.openSession();
        try {
            NewsMapper mapper = session.getMapper(NewsMapper.class);
            mapper.deleteNewsById(id);
            session.commit();
        } finally {
            session.close();
        }

    }

    @Override
    public void updateNewById(int id, String title, String content) {
        SqlSession session = factory.openSession();
        try {
            NewsMapper mapper = session.getMapper(NewsMapper.class);
            mapper.updateNewsById(id,title,content);
            session.commit();
        } finally {
            session.close();
        }
    }
}
