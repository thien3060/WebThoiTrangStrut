package com.action.admin;

import com.opensymphony.xwork2.ActionSupport;

/**
 * Created by user on 6/1/2016.
 */
public class ContactAction extends ActionSupport {
    @Override
    public String execute() throws Exception {
        System.out.println("test contact admin");
        return SUCCESS;
    }


}
