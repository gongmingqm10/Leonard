package com.xg.arctic.mappers;

import com.xg.arctic.model.Dealer;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;


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

    @Update(
            "UPDATE dealer " +
                    "SET dealerName=#{param2}, type=#{param3}, salerName=#{param4}," +
                    " phone=#{param5}, address=#{param6}, province=#{param7}" +
                    " WHERE id=#{param1}"
    )
    void updateDealerById(long id, String dealer, String type, String saler, String phone, String address, String province);

    @Insert(
            "INSERT INTO dealer(dealerName, type, salerName, phone, address, province) " +
                    "VALUES (#{param1}, #{param2}, #{param3}, #{param4}, #{param5}, #{param6})"
    )
    void addDealer(String dealer, String type, String saler, String phone, String address, String province);

}
