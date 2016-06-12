<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 6/1/2016
  Time: 4:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<t:genericpage>
    <jsp:attribute name="page_title">
      Cart
    </jsp:attribute>

    <jsp:body>
        <section id="cart_items">
            <div class="container">
                <div class="breadcrumbs">
                    <ol class="breadcrumb">
                        <li><a href="index.jsp">Trang chủ</a></li>
                        <li class="active">:Giỏ hàng</li>
                    </ol>
                </div>
                <div class="table-responsive cart_info">
                    <table class="table table-condensed">
                        <thead>
                        <tr class="cart_menu">
                            <td class="image">Sản phẩm đặt mua</td>
                            <td class="description"></td>
                            <td class="price">Giá</td>
                            <td class="quantity">Số lượng</td>
                            <td class="total">Tổng</td>
                            <td></td>
                        </tr>
                        </thead>
                        <tbody>
                    <s:iterator value="products" var="product">
                        <tr>
                            <td><s:property value="productID"/></td>
                            <td><s:property value="productName"/></td>
                            <td><s:property value="price"/></td>
                            <td><a href="addToCart?newProductID=<s:property value="id"/>"></a></td>
                        </tr>
                        <%--<tr>--%>
                            <%--<td class="cart_product">--%>
                                <%--<a href=""><img src="images/cart/one.png" alt=""></a>--%>
                            <%--</td>--%>
                            <%--<td class="cart_description">--%>
                                <%--<h4><a href="">Đầm bó</a></h4>--%>
                                <%--<p>Mã số: 1089772</p>--%>
                            <%--</td>--%>
                            <%--<td class="cart_price">--%>
                                <%--<p>300.000</p>--%>
                            <%--</td>--%>
                            <%--<td class="cart_quantity">--%>
                                <%--<div class="cart_quantity_button">--%>
                                    <%--<a class="cart_quantity_up" href=""> + </a>--%>
                                    <%--<input class="cart_quantity_input" type="text" name="quantity" value="1"--%>
                                           <%--autocomplete="off" size="2">--%>
                                    <%--<a class="cart_quantity_down" href=""> - </a>--%>
                                <%--</div>--%>
                            <%--</td>--%>
                            <%--<td class="cart_total">--%>
                                <%--<p class="cart_total_price">300.000</p>--%>
                            <%--</td>--%>
                            <%--<td class="cart_delete">--%>
                                <%--<a class="cart_quantity_delete" href=""><i class="fa fa-times"></i></a>--%>
                            <%--</td>--%>
                        <%--</tr>--%>

                        <%--<tr>--%>
                            <%--<td class="cart_product">--%>
                                <%--<a href=""><img src="images/cart/two.png" alt=""></a>--%>
                            <%--</td>--%>
                            <%--<td class="cart_description">--%>
                                <%--<h4><a href="">Áo sơ mi nữ</a></h4>--%>
                                <%--<p>Mã số: 1089772</p>--%>
                            <%--</td>--%>
                            <%--<td class="cart_price">--%>
                                <%--<p>500.000</p>--%>
                            <%--</td>--%>
                            <%--<td class="cart_quantity">--%>
                                <%--<div class="cart_quantity_button">--%>
                                    <%--<a class="cart_quantity_up" href=""> + </a>--%>
                                    <%--<input class="cart_quantity_input" type="text" name="quantity" value="1"--%>
                                           <%--autocomplete="off" size="2">--%>
                                    <%--<a class="cart_quantity_down" href=""> - </a>--%>
                                <%--</div>--%>
                            <%--</td>--%>
                            <%--<td class="cart_total">--%>
                                <%--<p class="cart_total_price">500.000</p>--%>
                            <%--</td>--%>
                            <%--<td class="cart_delete">--%>
                                <%--<a class="cart_quantity_delete" href=""><i class="fa fa-times"></i></a>--%>
                            <%--</td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                            <%--<td class="cart_product">--%>
                                <%--<a href=""><img src="images/cart/three.png" alt=""></a>--%>
                            <%--</td>--%>
                            <%--<td class="cart_description">--%>
                                <%--<h4><a href="">Đầm ngắn</a></h4>--%>
                                <%--<p>Mã số: 1089772</p>--%>
                            <%--</td>--%>
                            <%--<td class="cart_price">--%>
                                <%--<p>400.000</p>--%>
                            <%--</td>--%>
                            <%--<td class="cart_quantity">--%>
                                <%--<div class="cart_quantity_button">--%>
                                    <%--<a class="cart_quantity_up" href=""> + </a>--%>
                                    <%--<input class="cart_quantity_input" type="text" name="quantity" value="1"--%>
                                           <%--autocomplete="off" size="2">--%>
                                    <%--<a class="cart_quantity_down" href=""> - </a>--%>
                                <%--</div>--%>
                            <%--</td>--%>
                            <%--<td class="cart_total">--%>
                                <%--<p class="cart_total_price">400.000</p>--%>
                            <%--</td>--%>
                            <%--<td class="cart_delete">--%>
                                <%--<a class="cart_quantity_delete" href=""><i class="fa fa-times"></i></a>--%>
                            <%--</td>--%>
                        <%--</tr>--%>
                     </s:iterator>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
        <!--/#cart_items-->

        <section id="do_action">
            <div class="container">

                <div class="row">
                    <div class="col-sm-6">

                    </div>
                    <div class="col-sm-6">
                        <div class="total_area">

                            <a class="btn btn-default update" href="">Update</a>
                            <a class="btn btn-default check_out" href="">Check Out</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--/#do_action-->
    </jsp:body>

</t:genericpage>