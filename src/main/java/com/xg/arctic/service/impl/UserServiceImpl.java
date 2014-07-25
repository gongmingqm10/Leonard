package com.xg.arctic.service.impl;

import com.xg.arctic.mappers.UserMapper;
import com.xg.arctic.model.User;
import com.xg.arctic.service.UserService;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.ArrayList;
import java.util.List;

/**
 * User: gongming
 * Date: 7/25/14
 * Time: 9:28 AM
 * Email:gongmingqm10@foxmail.com
 */
public class UserServiceImpl implements UserService{

    private SqlSessionFactory factory;

    public UserServiceImpl(SqlSessionFactory factory) {
        this.factory = factory;
    }

    @Override
    public List<User> findAllUser() {
        List<User> users = new ArrayList<User>();
        SqlSession session = factory.openSession();
        try{
            UserMapper userMapper = session.getMapper(UserMapper.class);
            users = userMapper.findAllUsers();
        } finally {
            session.close();
        }
        return users;
    }

    @Override
    public List<User> findUserByName(String userName) {
        List<User> users = new ArrayList<User>();
        SqlSession session = factory.openSession();
        try{
            UserMapper userMapper = session.getMapper(UserMapper.class);
            users = userMapper.findUserByName(userName);
        } finally {
            session.close();
        }
        return users;
    }

}
