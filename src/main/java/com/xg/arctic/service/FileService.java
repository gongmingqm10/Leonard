package com.xg.arctic.service;

import com.xg.arctic.model.Video;

import java.util.List;

/**
 * Created by minggong on 7/26/14.
 */
public interface FileService {
    void createVideo(Video video );
    List<Video> findAllVideos();
    public void deleteVideoById(long id);
    public Video findVideoById(Long videoId) ;

 }
