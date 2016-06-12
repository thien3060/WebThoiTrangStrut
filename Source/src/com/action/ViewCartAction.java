package com.action;

import com.model.Products;
import com.model.Cart;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;
import java.util.*;


import java.util.HashMap;

/**
 * Created by user on 6/1/2016.
 */
public class ViewCartAction extends ActionSupport{

    private Map<Products, Integer> products;
    private float total;
    @Override
    public String execute() throws Exception {
        Cart cart = (Cart) ActionContext.getContext().getSession().get("cart");
        if (cart == null) {
            return ERROR;
        }
        products = cart.getProduct();
        total = cart.getTotalPrice();
        return SUCCESS;
    }

    public Map<Products, Integer> getProducts() {
        return products;
    }

    public float getTotal() {
        return total;
    }
}
