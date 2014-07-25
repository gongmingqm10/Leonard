package com.xg.arctic.mappers;

import com.xg.arctic.model.Dealer;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;


import java.util.List;

/**
 * User: gongming
 * Date: 7/25/14
 * Time: 12:03 PM
 * Email:gongmingqm10@foxmail.com
 */
public interface DealerMapper {
    @Select(
            "SELECT id, dealerName, type, salerName, phone, address, province FROM dealer"
    )
    List<Dealer> findAllDealers();

    @Select(
            "SELECT id, dealerName, type, salerName, phone, address, province FROM dealer" +
                    " where province =  #{province}"
    )
     //#{province}
    List<Dealer> findDealerByProvince(String province);

    @Delete(
            "DELETE FROM dealer WHERE id = #{id}"
    )
    void deleteDealerById(long id);
}
