package com.action.admin;

import com.dao.CustomersDaoImpl;
import com.dao.OrdersDaoImpl;
import com.model.Orders;
import com.opensymphony.xwork2.ActionSupport;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by user on 6/1/2016.
 */
public class HomeAction extends ActionSupport {
    private Long countCustomer;
    private Long countOrder;
    private List<Orders> list;

    public HomeAction() {

    }

    @Override
    public String execute() throws Exception {
        System.out.println("test home admin");
        CustomersDaoImpl customersDao = new CustomersDaoImpl();
        OrdersDaoImpl ordersDao = new OrdersDaoImpl();
        list = new ArrayList<Orders>();

        list = ordersDao.findAllOrders();
        countCustomer = customersDao.count();
        countOrder = ordersDao.count();
        for (Orders order : list) {
            System.out.println("orders: " + order.getCustomers().getName());
        }
        /*Map session = ActionContext.getContext().getSession();
        session.put("CUSTOMERS", countCustomer);*/
        System.out.println("customers: " + countCustomer);
        System.out.println("orders: " + countOrder);
        return SUCCESS;
    }

    public String reviews() throws Exception {
        System.out.println("test home reviews");
        return SUCCESS;
    }

    public List<Orders> getList() {
        return list;
    }
    public Long getCountCustomer() {
        return countCustomer;
    }
    public Long getCountOrder() {
        return countOrder;
    }
}
