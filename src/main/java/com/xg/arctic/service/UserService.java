package com.xg.arctic.service;

import com.xg.arctic.model.User;

import java.util.List;

/**
 * User: gongming
 * Date: 7/25/14
 * Time: 9:28 AM
 * Email:gongmingqm10@foxmail.com
 */
public interface UserService {

    List<User> findAllUser();

    List<User> findUserByName(String userName);
}
