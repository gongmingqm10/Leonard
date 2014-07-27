package com.xg.arctic.mappers;

import com.xg.arctic.model.Dealer;
import com.xg.arctic.model.User;
import com.xg.arctic.model.Video;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Created by minggong on 7/26/14.
 */
public interface FileMapper {
    @Insert(
            "INSERT INTO files (source, filename, filesize, image) " +
                        " VALUES ( #{source}, #{filename},  #{filesize}, #{image} )"
    )
    void createVideo(Video video);

    @Select(
            "SELECT id, filename, source, image, scan FROM files"
    )
    List<Video> findAllVideos();

    @Delete(
            "DELETE FROM files WHERE id = #{id}"
    )
    void deleteVideoById(long id);
}
