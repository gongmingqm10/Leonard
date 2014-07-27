package com.xg.arctic.service.impl;

import com.xg.arctic.mappers.FileMapper;
import com.xg.arctic.model.Video;
import com.xg.arctic.service.FileService;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by minggong on 7/26/14.
 */
public class FileServiceImpl implements FileService {
    private SqlSessionFactory factory;

    public FileServiceImpl(SqlSessionFactory factory) {
        this.factory = factory;
    }

    @Override
    public void createVideo(Video video) {
        SqlSession session = factory.openSession();
        try {
            FileMapper mapper = session.getMapper(FileMapper.class);
            mapper.createVideo(video);
            session.commit();
        } finally {
            session.close();
        }
    }

    @Override
    public List<Video> findAllVideos() {
        List<Video> videos = new ArrayList<Video>();
        SqlSession session = factory.openSession();
        try {
            FileMapper mapper = session.getMapper(FileMapper.class);
            videos =  mapper.findAllVideos();

        } finally {
            session.close();
        }
        return videos;
    }

    @Override
    public void deleteVideoById(long id) {
        SqlSession session = factory.openSession();
        try{
            FileMapper fileMapper = session.getMapper(FileMapper.class);
            fileMapper.deleteVideoById(id);
            session.commit();
        } finally {
            session.close();
        }
    }
}
