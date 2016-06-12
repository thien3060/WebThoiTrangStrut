package com.action.admin;

import com.dao.OrdersDao;
import com.dao.OrdersDaoImpl;
import com.model.Orders;
import com.opensymphony.xwork2.ActionSupport;

import java.util.List;

/**
 * Created by user on 6/1/2016.
 */
public class OrdersAction extends ActionSupport {
    private OrdersDaoImpl ordersDao = new OrdersDaoImpl();
    private List<Orders> list;
    @Override
    public String execute() throws Exception {
        System.out.println("test orders admin");
        return SUCCESS;
    }

    public String orders() throws Exception {
        System.out.println("test list orders admin");
        list = ordersDao.findAllOrders();
        for (Orders order : list) {
            System.out.println("product: " + order.getOrderId());
        }
        return SUCCESS;
    }

    public String addorder() throws Exception {
        System.out.println("test add order admin");
        return SUCCESS;
    }

    public List<Orders> getList() {
        return list;
    }
}
