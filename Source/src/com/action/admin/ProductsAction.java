package com.action.admin;

import com.dao.CategoriesDaoImpl;
import com.dao.ImagesDaoImpl;
import com.dao.ProductsDaoImpl;
import com.dao.SuppliersDaoImpl;
import com.dto.ProductDto;
import com.model.Categories;
import com.model.Images;
import com.model.Products;
import com.model.Suppliers;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/**
 * Created by user on 6/1/2016.
 */
public class ProductsAction extends ActionSupport {
    private final String defaultImagePath = "/images/home/default.png";

    private ProductsDaoImpl productsDao = new ProductsDaoImpl();
    private CategoriesDaoImpl categoriesDao = new CategoriesDaoImpl();
    private SuppliersDaoImpl suppliersDao = new SuppliersDaoImpl();
    private List<Products> list;
    private List<ProductDto> listDto;
    private List<Categories> listCategories;
    private List<Suppliers> listSuppliers;
    private List<String> selected;
    private Set<Images> listImage;
    private Products product_add = new Products();
    private Products product_edit = new Products();

    private String action = null;
    @Override
    public String execute() throws Exception {
        System.out.println("--------------------------");
        System.out.println("test products admin");
        return SUCCESS;
    }

    public String products() throws Exception {
        System.out.println("--------------------------");
        System.out.println("test list products admin");
        listDto = new ArrayList<ProductDto>();
        list = productsDao.findAllProducts();

        Set<Images> imageProduct;
        for (Products product : list) {
            imageProduct = product.getImageses();

            Images defaultImage = new Images();
            Images avatar = new Images();
            defaultImage.setUrl(defaultImagePath);
            for (Images hinh : imageProduct) {
                avatar = hinh;
                System.out.println("avatar: " + avatar.getUrl());
                break;
            }

            System.out.println("-----------------");
            System.out.println("product: " + product.getProductName());

            System.out.println("-------dto-----------");
            ProductDto add = new ProductDto();
            add.setProduct(product);
            if (avatar.getUrl() != null) {
                add.setImage(avatar);
            } else {
                add.setImage(defaultImage);
            }
            listDto.add(add);
        }
        return SUCCESS;
    }

    public String modifyProduct() throws Exception {
        System.out.println("--------------------------");
        System.out.println("test modify product admin");
        HttpServletRequest request;
        String editId;

        System.out.println("action: " + action);
        try {
            request = ServletActionContext.getRequest();
            editId = request.getParameter("productId");
            System.out.println("productId: " + editId);
            if (editId != null) {
                product_edit = productsDao.findByID(Integer.parseInt(editId));
                listImage = product_edit.getImageses();
            }
            listCategories = categoriesDao.findAllCategories();
            listSuppliers = suppliersDao.findAllSuppliers();

            if (action != null) {
                if (action.equals("Save")) {
                    System.out.println("add");
                    Products insert = new Products();
                    System.out.println("name product: " + product_add.getProductName());

                    String categoryId = request.getParameter("category");
                    String supplierId = request.getParameter("supplier");
                    String available = request.getParameter("status");
                    product_add.setAvailable(true);
                    if (available.equals("0")) {
                        product_add.setAvailable(false);
                    }
                    System.out.println(categoryId);
                    System.out.println(supplierId);
                    System.out.println(available);

                    insert.setProductName(product_add.getProductName());
                    insert.setUnit(product_add.getUnit());
                    insert.setPrice(product_add.getPrice());
                    insert.setStock(product_add.getStock());
                    insert.setAvailable(product_add.isAvailable());
                    insert.setCategories(categoriesDao.findByID(Integer.parseInt(categoryId)));
                    insert.setSuppliers(suppliersDao.findByID(Integer.parseInt(supplierId)));

                    productsDao.saveProducts(insert);
                    System.out.println("add ok");
                    return "added";
                }

                if (action.equals("Edit")) {
                    editId = request.getParameter("productId");
                    Products edit = productsDao.findByID(Integer.parseInt(editId));

                    String categoryId = request.getParameter("category");
                    String supplierId = request.getParameter("supplier");
                    String available = request.getParameter("status");

                    boolean availableEdit = true;
                    if (available.equals("0")) {
                        availableEdit = false;
                    }

                    System.out.println(categoryId);
                    System.out.println(supplierId);
                    System.out.println(available);


                    edit.setProductName(request.getParameter("productName"));
                    edit.setUnit(request.getParameter("unit"));
                    edit.setPrice(Double.parseDouble(request.getParameter("price")));
                    edit.setStock(Integer.parseInt(request.getParameter("stock")));
                    edit.setAvailable(availableEdit);
                    edit.setCategories(categoriesDao.findByID(Integer.parseInt(categoryId)));
                    edit.setSuppliers(suppliersDao.findByID(Integer.parseInt(supplierId)));

                    productsDao.updateProducts(edit);
                    System.out.println("edit ok");
                    return "edited";
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return SUCCESS;
    }

    public String deleteProduct() throws  Exception {
        HttpServletRequest request;
        String[] listProductsId;
        System.out.println("--------------------------");
        try {
            request = ServletActionContext.getRequest();
            listProductsId = request.getParameterValues("selected");

            if (action.equals("Delete")) {
                System.out.println("delete");
                for (String id : listProductsId) {
                    productsDao.deleteProductsByID(Integer.parseInt(id));
                }
                System.out.println("delete ok");
                return "deleted";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return SUCCESS;
    }

    public String uploadImage() {
        File uploadFile = null;
        String imageName = null;
        HttpServletRequest request;
        //avatar = "default.jpg";
        System.out.println("upload");
        try {
            request = ServletActionContext.getRequest();
            try {
                List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);

                for(FileItem item : multiparts){
                    if(!item.isFormField()){
                        String name = new File(item.getName()).getName();
                        String path = request.getSession().getServletContext().getRealPath("/") + "images/upload/product";
                        uploadFile = new File(path + File.separator + name);
                        String rootPath = System.getProperty("user.dir");
                        System.out.println("link project: " + rootPath);
                        System.out.println("link upload: " + uploadFile.getAbsolutePath());
                        item.write(uploadFile);

                        System.out.println("upload file: " + path + File.separator + name);
                        imageName = name;
                    }
                }
                System.out.println("File Uploaded Successfully");

                /*if (avatar.equals("default.jpg")) {
                    avatar = imageName;
                }*/

            } catch (Exception e) {
                System.out.println("File Upload Failed due to " + e);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "uploaded";
    }

    public List<Products> getList() {
        return list;
    }

    public List<String> getSelected() {
        return selected;
    }

    public void setSelected(List<String> selected) {
        this.selected = selected;
    }

    public Products getProduct_add() {
        return product_add;
    }

    public void setProduct_add(Products product_add) {
        this.product_add = product_add;
    }

    public Products getProduct_edit() {
        return product_edit;
    }

    public void setProduct_edit(Products product_edit) {
        this.product_edit = product_edit;
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public List<ProductDto> getListDto() {
        return listDto;
    }

    public List<Categories> getListCategories() {
        return listCategories;
    }

    public List<Suppliers> getListSuppliers() {
        return listSuppliers;
    }

    public Set<Images> getListImage() {
        return listImage;
    }

    public void setListImage(Set<Images> listImage) {
        this.listImage = listImage;
    }
}
