package com.xg.arctic.mappers;

import com.xg.arctic.model.News;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

/**
 * User: gongming
 * Date: 7/29/14
 * Time: 9:00 AM
 * Email:gongmingqm10@foxmail.com
 */
public interface NewsMapper {

    @Insert(
            "INSERT INTO news (title, content) " +
                    " VALUES ( #{param1}, #{param2})"
    )
    public void createNews(String title, String content);

    @Select(
            "SELECT id, title, scan, content, date FROM news"
    )
    List<News> findAllNews();

    @Select(
            "SELECT id, title, scan, content, date FROM news" +
                    " WHERE id= #{id}"
    )
    News findNewsById(long id);

    @Delete(
            "DELETE FROM news WHERE id= #{id}"
    )
    void deleteNewsById(long id);

    @Update(
            "UPDATE news " +
            "SET title=#{param2}, content=#{param3} " +
            "WHERE id=#{param1}"
    )
    void updateNewsById(int id, String title, String content);
}
