package com.action;

import com.model.Cart;
import com.model.Products;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.dao.ProductsDaoImpl;

/**
 * Created by NguyenThi on 6/12/2016.
 */
public class AddProductToCart extends ActionSupport{
    private int newProductID;
    ProductsDaoImpl new1=new ProductsDaoImpl();
    public void setNewProductID( int newProductID){
        this.newProductID=newProductID;
    }
    public String execute() throws Exception {
        Cart cart=(Cart) ActionContext.getContext().getSession().get("cart");
        if(cart==null)
        {
            cart =new Cart();
        }
        Products p= new1.findByID(newProductID);
        if (p.getProductId() == 0) {
            return ERROR;
        }
        cart.addProduct(p);
        ActionContext.getContext().getSession().put("cart", cart);
        return SUCCESS;
    }
}
