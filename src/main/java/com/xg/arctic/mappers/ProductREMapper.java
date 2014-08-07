package com.xg.arctic.mappers;

import com.xg.arctic.model.ProductRE;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

/**
 * Created by xu on 2014/8/6.
 */
public interface ProductREMapper {

    @Select(
            "SELECT id, productView, productParam, productFeature, productId, productName from productre"
    )
    List<ProductRE> findAllProductREs();

    @Insert(
            "INSERT INTO productRE(productId, productName) " +
                    "VALUES (#{param1}, #{param2})"
    )
    void addProductRE(long id, String productName);

    @Select(
            "SELECT id, productView, productParam, productFeature, productId, productName from productre" +
                    " WHERE id= #{id} "
    )
    ProductRE findProductREById(long id);

    @Update(
            "UPDATE productre SET productFeature=#{param2} WHERE id= #{param1}"
    )
    void updateFeatureById(long id, String feature);

    @Update(
            "UPDATE productre SET productParam=#{param2} WHERE id= #{param1}"
    )
    void updateParamById(long id, String param);

    @Select(
            "SELECT id, productView, productParam, productFeature, productId, productName from productre" +
                    " WHERE productId= #{id} "
    )
    ProductRE findProductREByProductId(long id);

    @Update(
            "UPDATE productre SET productView=#{param2} WHERE id= #{param1}"
    )
    void updateViewById(long id, String url);

    @Delete(
            "DELETE FROM productre WHERE productId=#{id}"
    )
    void deleteProductREByProductId(long id);
}
