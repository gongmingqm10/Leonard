package com.xg.arctic.mappers;

import com.xg.arctic.model.Product;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

/**
 * User: gongming
 * Date: 7/31/14
 * Time: 9:44 AM
 * Email:gongmingqm10@foxmail.com
 */
public interface ProductMapper {

    @Insert(
            "INSERT INTO product(number, productName, type, subType, productInfo, colors, colorName, images) " +
                    "VALUES (#{param1}, #{param2}, #{param3}, #{param4}, #{param5}, #{param6}, #{param7}, #{param8})"
    )
    void addProduct(String number, String productName, String type, String subType, String productInfo, String colors, String colorName, String images);

    @Select(
            "SELECT id, number, productName, type, subType, productInfo, productNews, colors, colorName, images FROM product"
    )
    List<Product> findAllProducts();

    @Delete(
            "DELETE FROM product WHERE id = #{id}"
    )
    void deleteProductById(long id);

    @Select(
            "SELECT id, number, productName, type, subType, productInfo, productNews, colors, colorName, images FROM product " +
                    "where id=#{id}"
    )
    Product findProductById(long id);

    @Update(
            "UPDATE product SET productNews=#{param2} WHERE id= #{param1}"
    )
    void updateDescribeById(long id, String describe);

    @Update(
            "UPDATE product SET number=#{param2}, productName=#{param3}, type=#{param4}, subType=#{param5}," +
                    " productInfo=#{param6}, colors=#{param7}, colorName=#{param8}, images=#{param9}" +
                    " WHERE id= #{param1}"
    )
    void updateProduct(String id, String number, String productName, String type, String subType, String productInfo, String colors, String colorName, String images);

    @Select(
            "SELECT id, number, productName, type, subType, productInfo, productNews, colors, colorName, images FROM product" +
                    " WHERE type=#{type}"
    )
    List<Product> findProductsByType(String type);
}
