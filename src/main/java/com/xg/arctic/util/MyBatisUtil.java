package com.xg.arctic.util;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.Reader;

/**
 * User: gongming
 * Date: 7/25/14
 * Time: 9:36 AM
 * Email:gongmingqm10@foxmail.com
 */
public class MyBatisUtil {
    private static SqlSessionFactory factory;

    static {
        Reader reader = null;
        try {
            reader = Resources.getResourceAsReader("mybatis.config.xml");
        } catch (IOException e) {
            throw new RuntimeException(e.getMessage());
        }
        factory = new SqlSessionFactoryBuilder().build(reader);
    }

    public static SqlSessionFactory getSqlSessionFactory() {
        return factory;
    }
}
