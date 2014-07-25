package com.xg.arctic.service;

import com.xg.arctic.model.Dealer;

import java.util.List;

/**
 * User: gongming
 * Date: 7/25/14
 * Time: 12:05 PM
 * Email:gongmingqm10@foxmail.com
 */
public interface DealerService {
    List<Dealer> findAllDealer();

    List<Dealer> findDealerByProvince(String province);
}
