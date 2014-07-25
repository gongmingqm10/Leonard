package com.xg.arctic.service.impl;

import com.xg.arctic.mappers.DealerMapper;
import com.xg.arctic.mappers.UserMapper;
import com.xg.arctic.model.Dealer;
import com.xg.arctic.model.User;
import com.xg.arctic.service.DealerService;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.ArrayList;
import java.util.List;

/**
 * User: gongming
 * Date: 7/25/14
 * Time: 12:07 PM
 * Email:gongmingqm10@foxmail.com
 */
public class DealerServiceImpl implements DealerService{
    private SqlSessionFactory factory;

    public DealerServiceImpl(SqlSessionFactory factory) {
        this.factory = factory;
    }

    @Override
    public List<Dealer> findAllDealer() {
        List<Dealer> dealers = new ArrayList<Dealer>();
        SqlSession session = factory.openSession();
        try{
            DealerMapper dealerMapper = session.getMapper(DealerMapper.class);
            dealers = dealerMapper.findAllDealers();
        } finally {
            session.close();
        }
        return dealers;
    }
}
