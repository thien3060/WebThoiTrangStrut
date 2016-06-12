package com.action;

import com.opensymphony.xwork2.ActionSupport;

import java.util.List;

/**
 * Created by user on 6/1/2016.
 */
public class ProductAction extends ActionSupport{
    @Override
    public String execute() throws Exception {
        return SUCCESS;
    }

    public String productsList(){
        return SUCCESS;
    }

    public String productDetail(){
        return SUCCESS;
    }
}
