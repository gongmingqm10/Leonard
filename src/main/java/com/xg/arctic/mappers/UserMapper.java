package com.xg.arctic.mappers;

import com.xg.arctic.model.User;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * User: gongming
 * Date: 7/25/14
 * Time: 9:24 AM
 * Email:gongmingqm10@foxmail.com
 */
public interface UserMapper {

    @Select(
            "SELECT id, name, price FROM user"
    )
    List<User> findAllUsers();

}
