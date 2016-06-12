package com.model;

import com.model.Products;
import com.opensymphony.xwork2.ActionSupport;
import java.util.*;
import java.util.HashMap;
/**
 * Created by NguyenThi on 6/13/2016.
 */
public class Cart {
    private final Map<Products,Integer> cart=new HashMap<Products,Integer>();
    public Cart(){

    }

    public void addProduct(Products p){
        Integer amount= cart.get(p);
        cart.put(p,amount==null?1:(amount+1));
    }

    public Map<Products,Integer> getProduct(){
        return cart;
    }
    public float getTotalPrice(){
        float total=0;
        Set<Products> keys= cart.keySet();
        for(Products products: keys){
            total+=products.getPrice()*cart.get(products);
        }
        return total;
    }
}
