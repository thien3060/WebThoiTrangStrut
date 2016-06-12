package com.dao;

import com.model.Orderdetails;

import java.util.List;

/**
 * Created by noowaay on 07/06/2016.
 */
public interface OrderdetailsDao {
    Orderdetails findByID(int orderDetailID);

    void saveOrderdetails(Orderdetails orderDetail);

    void deleteOrderdetailsByID(int orderDetailID);

    void updateOrderdetails(Orderdetails orderDetail);

    List<Orderdetails> findAllOrderdetails();
}
