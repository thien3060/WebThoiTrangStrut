<%--
  Created by IntelliJ IDEA.
  User: noowaay
  Date: 02/06/2016
  Time: 1:08 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="s" uri="/struts-tags" %>

<t:admingenericpage>
    <jsp:attribute name="page_title">
      Orders
    </jsp:attribute>

    <jsp:body>
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-laptop"></i>Orders</h3>
                <ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><a href="index">Home</a></li>
                    <li><i class="fa fa-laptop"></i>Orders</li>
                </ol>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12 col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading" style="height: 10px;">
                        <h2><i class="fa fa-flag-o red"></i><strong>Orders List</strong></h2>

                        <div class="pull-right" style="float: right; padding-top: 4px;">
                            <a href="addorder" data-toggle="tooltip" title="Add New" class="btn btn-primary" data-original-title="Add New">
                                <i class="fa fa-plus"></i>
                            </a>
                        </div>
                    </div>
                    <div class="panel-body">
                        <table class="table bootstrap-datatable countries">
                            <thead>
                            <th></th>
                            <th>Order ID</th>
                            <th>Customer</th>
                            <th>Status</th>
                            <th>Total</th>
                            <th>Date Added</th>
                            <th>Date Required</th>
                            <th  class="text-right">Action</th>
                            </tr>
                            </thead>
                            <tbody>
                                <s:iterator value="list">
                                    <tr>
                                        <td class="text-center">
                                            <input type="checkbox">
                                        </td>
                                        <td><s:property value="orderId"/></td>
                                        <td><s:property value="customers.name"/></td>
                                        <td>Pending</td>
                                        <td>800.000 vnđ</td>
                                        <td><s:property value="orderDate"/></td>
                                        <td><s:property value="requireDate"/></td>
                                        <td class="text-right">
                                            <a href="#" data-toggle="tooltip" title="" class="btn btn-info" data-original-title="View">
                                                <i class="fa fa-eye"></i>
                                            </a>
                                            <a href="#" data-toggle="tooltip" title="" class="btn btn-primary" data-original-title="Edit">
                                                <i class="fa fa-pencil"></i>
                                            </a>
                                            <a href="#" id="button-delete2787???" data-toggle="tooltip" title="" class="btn btn-danger" data-original-title="Delete">
                                                <i class="fa fa-trash-o"></i>
                                            </a>
                                        </td>
                                    </tr>
                                </s:iterator>

                            </tbody>
                        </table>
                    </div>

                </div><!--/col-->
            </div>
            <!-- list orders end -->
        </div>
    </jsp:body>
</t:admingenericpage>