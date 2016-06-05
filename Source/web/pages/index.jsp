<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 6/1/2016
  Time: 2:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:genericpage>
    <jsp:attribute name="page_title">
      Home Page
    </jsp:attribute>

    <jsp:body>
        <section id="slider"><!--slider-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div id="slider-carousel" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
                                <li data-target="#slider-carousel" data-slide-to="1"></li>
                                <li data-target="#slider-carousel" data-slide-to="2"></li>
                            </ol>

                            <div class="carousel-inner">
                                <div class="item active">
                                    <div class="col-sm-6">
                                        <h1><span>L</span>-SHOP</h1>
                                        <h2>Sản phẩm tiêu biểu</h2>
                                        <p>Đây là những sản phẩm tiêu biểu của cửa hàng chúng tôi. </p>
                                        <button type="button" class="btn btn-default get">Mua ngay</button>
                                    </div>
                                    <div class="col-sm-6">
                                        <img src="../images/home/girl1.jpg" class="girl img-responsive" alt=""/>
                                        <img src="../images/home/pricing.png" class="pricing" alt=""/>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="col-sm-6">
                                        <h1><span>L</span>-SHOP</h1>
                                        <h2>Sản phẩm thiết kế</h2>
                                        <p>Đây là những sản phẩm của stylist của cửa hàng thiết kế. </p>
                                        <button type="button" class="btn btn-default get">Mua ngay</button>
                                    </div>
                                    <div class="col-sm-6">
                                        <img src="../images/home/girl2.jpg" class="girl img-responsive" alt=""/>
                                        <img src="../images/home/pricing.png" class="pricing" alt=""/>
                                    </div>
                                </div>

                                <div class="item">
                                    <div class="col-sm-6">
                                        <h1><span>L</span>-SHOP</h1>
                                        <h2>Sản phẩm tiêu biểu</h2>
                                        <p>Đây là những sản phẩm tiêu biểu của cửa hàng chúng tôi. </p>
                                        <button type="button" class="btn btn-default get">Mua ngay</button>
                                    </div>
                                    <div class="col-sm-6">
                                        <img src="../images/home/girl3.jpg" class="girl img-responsive" alt=""/>
                                        <img src="../images/home/pricing.png" class="pricing" alt=""/>
                                    </div>
                                </div>

                            </div>

                            <a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
                                <i class="fa fa-angle-left"></i>
                            </a>
                            <a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </div>

                    </div>
                </div>
            </div>
        </section>
        <!--/slider-->

        <section>
            <div class="container">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="left-sidebar">
                            <h2>Danh mục</h2>
                            <div class="panel-group category-products" id="accordian"><!--category-productsr-->
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordian" href="#sportswear">
                                                <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                                Quần áo thể thao
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="sportswear" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <ul>
                                                <li><a href="#">Nike </a></li>
                                                <li><a href="#">Under Armour </a></li>
                                                <li><a href="#">Adidas </a></li>
                                                <li><a href="#">Puma</a></li>
                                                <li><a href="#">ASICS </a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="#">Bán chạy nhất</a></h4>
                                    </div>
                                </div>
                            </div><!--/category-products-->

                            <div class="brands_products">
                                <h2>Thống kê</h2>
                                <div class="brands-name">
                                    <ul class="nav nav-pills nav-stacked">
                                        <li><a href="#"> <span class="pull-right">(50)</span>Áo Sơ Mi</a></li>
                                        <li><a href="#"> <span class="pull-right">(56)</span>Đầm nữ</a></li>
                                        <li><a href="#"> <span class="pull-right">(27)</span>Áo quần trẻ em</a></li>
                                        <li><a href="#"> <span class="pull-right">(32)</span>Phụ kiện</a></li>

                                    </ul>
                                </div>
                            </div><!--/brands_products-->

                            <div class="price-range"><!--price-range-->
                                <h2>Giá tăng-giảm</h2>
                                <div class="well text-center">
                                    <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600"
                                           data-slider-step="5" data-slider-value="[250,450]" id="sl2"><br/>
                                    <b class="pull-left">150.000</b> <b class="pull-right">6.000.000</b>
                                </div>
                            </div><!--/price-range-->

                            <div class="shipping text-center"><!--shipping-->
                                <img src="../images/home/shipping.jpg" alt=""/>
                            </div><!--/shipping-->

                        </div>
                    </div>

                    <div class="col-sm-9 padding-right">
                        <div class="features_items"><!--features_items-->
                            <h2 class="title text-center">Sản phẩm nổi bậc</h2>
                            <div class="col-sm-4">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="../images/home/product1.jpg" alt=""/>
                                            <h2>219.000</h2>
                                            <p>Áo khoác nữ</p>
                                            <a href="#" class="btn btn-default add-to-cart"><i
                                                    class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                        </div>
                                        <div class="product-overlay">
                                            <div class="overlay-content">
                                                <h2>219.000</h2>
                                                <p>Áo khoác nữ</p>
                                                <a href="product-details.html" class="btn btn-default add-to-cart">Thông
                                                    tin sản phẩm</a>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="../images/home/product2.jpg" alt=""/>
                                            <h2>300.000</h2>
                                            <p>Áo sơ mi nam</p>
                                            <a href="#" class="btn btn-default add-to-cart"><i
                                                    class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                        </div>
                                        <div class="product-overlay">
                                            <div class="overlay-content">
                                                <h2>300.000</h2>
                                                <p>Áo sơ mi nam</p>
                                                <a href="product-details.html" class="btn btn-default add-to-cart">Thông
                                                    tin sản phẩm</a>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="../images/home/product3.jpg" alt=""/>
                                            <h2>350.000</h2>
                                            <p>Đầm bó</p>
                                            <a href="#" class="btn btn-default add-to-cart"><i
                                                    class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                        </div>
                                        <div class="product-overlay">
                                            <div class="overlay-content">
                                                <h2>350.000</h2>
                                                <p>Đầm bó</p>
                                                <a href="product-details.html" class="btn btn-default add-to-cart">Thông
                                                    tin sản phẩm</a>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="../images/home/product4.jpg" alt=""/>
                                            <h2>250.000</h2>
                                            <p>Đầm dài</p>
                                            <a href="#" class="btn btn-default add-to-cart"><i
                                                    class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                        </div>
                                        <div class="product-overlay">
                                            <div class="overlay-content">
                                                <h2>250.000</h2>
                                                <p>Đầm dài</p>
                                                <a href="product-details.html" class="btn btn-default add-to-cart">Thông
                                                    tin sản phẩm</a>
                                            </div>
                                        </div>
                                        <img src="../images/home/new.png" class="new" alt=""/>
                                    </div>

                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="../images/home/product5.jpg" alt=""/>
                                            <h2>300.000</h2>
                                            <p>Áo thun</p>
                                            <a href="#" class="btn btn-default add-to-cart"><i
                                                    class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                        </div>
                                        <div class="product-overlay">
                                            <div class="overlay-content">
                                                <h2>300.000</h2>
                                                <p>Áo thun</p>
                                                <a href="product-details.html" class="btn btn-default add-to-cart">Thông
                                                    tin sản phẩm</a>
                                            </div>
                                        </div>
                                        <img src="../images/home/sale.png" class="new" alt=""/>
                                    </div>

                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="../images/home/product6.jpg" alt=""/>
                                            <h2>150.000</h2>
                                            <p>Áo phông</p>
                                            <a href="#" class="btn btn-default add-to-cart"><i
                                                    class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                        </div>
                                        <div class="product-overlay">
                                            <div class="overlay-content">
                                                <h2>150.000</h2>
                                                <p>Áo phông</p>
                                                <a href="product-details.html" class="btn btn-default add-to-cart">Thông
                                                    tin sản phẩm</a>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>

                        </div>

                        <div class="category-tab">
                            <div class="col-sm-12">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a href="#tshirt" data-toggle="tab">Áo Thun</a></li>
                                    <li><a href="#blazers" data-toggle="tab">Áo sơ mi</a></li>
                                    <li><a href="#sunglass" data-toggle="tab">Phụ kiện</a></li>
                                    <li><a href="#kids" data-toggle="tab">Giày dép</a></li>
                                    <li><a href="#poloshirt" data-toggle="tab">Khác</a></li>
                                </ul>
                            </div>
                            <div class="tab-content">
                                <div class="tab-pane fade active in" id="tshirt">
                                    <div class="col-sm-3">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <a href="product-details.html"> <img src="../images/home/gallery1.jpg"
                                                                                         alt=""/></a>
                                                    <h2>500.000</h2>
                                                    <p>Áo hai dây</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i
                                                            class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <a href="product-details.html"><img src="../images/home/gallery2.jpg"
                                                                                        alt=""/></a>
                                                    <h2>150.000</h2>
                                                    <p>Áo thun nam</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i
                                                            class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <a href="product-details.html"><img src="../images/home/gallery3.jpg"
                                                                                        alt=""/></a>
                                                    <h2>250.000</h2>
                                                    <p>Áo vec nữ</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i
                                                            class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <a href="product-details.html"><img src="../images/home/gallery4.jpg"
                                                                                        alt=""/></a>
                                                    <h2>500.000</h2>
                                                    <p>Áo thu đông</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i
                                                            class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="tab-pane fade" id="blazers">
                                    <div class="col-sm-3">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <a href="product-details.html"><img src="../images/home/gallery4.jpg"
                                                                                        alt=""/></a>
                                                    <h2>500.000</h2>
                                                    <p>Áo hai dây</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i
                                                            class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <a href="product-details.html"><img src="../images/home/gallery3.jpg"
                                                                                        alt=""/></a>
                                                    <h2>150.000</h2>
                                                    <p>Áo thun nam</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i
                                                            class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <a href="product-details.html"><img src="../images/home/gallery2.jpg"
                                                                                        alt=""/></a>
                                                    <h2>250.000</h2>
                                                    <p>Áo vec nữ</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i
                                                            class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <a href="product-details.html"><img src="../images/home/gallery1.jpg"
                                                                                        alt=""/></a>
                                                    <h2>500.000</h2>
                                                    <p>Áo thu đông</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i
                                                            class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="tab-pane fade" id="sunglass">
                                    <div class="col-sm-3">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <a href="product-details.html"><img src="../images/home/5.jpg" alt=""/></a>
                                                    <h2>260.000</h2>
                                                    <p>Túi xách hộp sang trọng GT107</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i
                                                            class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <a href="product-details.html"><img src="../images/home/6.jpg" alt=""/></a>
                                                    <h2>118.000</h2>
                                                    <p>Balo dây rút</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i
                                                            class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <a href="product-details.html"><img src="../images/home/7.jpg" alt=""/></a>
                                                    <h2>271.000</h2>
                                                    <p>Túi xách mini da bóng</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i
                                                            class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <a href="product-details.html"><img src="images/home/8.jpg" alt=""/></a>
                                                    <h2>89.000</h2>
                                                    <p>Dây chuyền nữ thời trang</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i
                                                            class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="tab-pane fade" id="kids">
                                    <div class="col-sm-3">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <a href="product-details.html"><img src="../images/home/4.jpg" alt=""/></a>
                                                    <h2>218.000</h2>
                                                    <p>Giầy nam sang trọng</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i
                                                            class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <a href="product-details.html"><img src="../images/home/3.jpg" alt=""/></a>
                                                    <h2>230.000</h2>
                                                    <p>Giày Sandal Edition thời trang</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i
                                                            class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <a href="product-details.html"><img src="../images/home/2.jpg" alt=""/></a>
                                                    <h2>352.000</h2>
                                                    <p>Giày nam da </p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i
                                                            class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <a href="product-details.html"><img src="../images/home/1.jpg" alt=""/></a>
                                                    <h2>447.000</h2>
                                                    <p>Giầy nam Hàn Quốc</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i
                                                            class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="tab-pane fade" id="poloshirt">
                                    <div class="col-sm-3">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <a href="product-details.html"><img src="../images/home/gallery2.jpg"
                                                                                        alt=""/></a>
                                                    <h2>150.000</h2>
                                                    <p>Áo thun nam</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i
                                                            class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <a href="product-details.html"><img src="../images/home/gallery4.jpg"
                                                                                        alt=""/></a>
                                                    <h2>500.000</h2>
                                                    <p>Áo thu đông</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i
                                                            class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <a href="product-details.html"><img src="../images/home/gallery3.jpg"
                                                                                        alt=""/></a>
                                                    <h2>300.000</h2>
                                                    <p>Áo vec nữ</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i
                                                            class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <a href="product-details.html"><img src="../images/home/gallery1.jpg"
                                                                                        alt=""/></a>
                                                    <h2>200.000</h2>
                                                    <p>Áo hai dây</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i
                                                            class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><!--/category-tab-->

                        <div class="recommended_items">
                            <h2 class="title text-center">Sale off</h2>

                            <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner">
                                    <div class="item active">
                                        <div class="col-sm-4">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="productinfo text-center">
                                                        <a href="product-details.html"><img
                                                                src="../images/home/recommend1.jpg" alt=""/></a>
                                                        <h2>100.000</h2>
                                                        <p>Áo thun nữ</p>
                                                        <a href="#" class="btn btn-default add-to-cart"><i
                                                                class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="productinfo text-center">
                                                        <a href="product-details.html"><img
                                                                src="../images/home/recommend2.jpg" alt=""/></a>
                                                        <h2>50.000</h2>
                                                        <p>Áo thun nữ</p>
                                                        <a href="#" class="btn btn-default add-to-cart"><i
                                                                class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="productinfo text-center">
                                                        <a href="product-details.html"><img
                                                                src="../images/home/recommend3.jpg" alt=""/></a>
                                                        <h2>80.000</h2>
                                                        <p>Áo thun nữ</p>
                                                        <a href="#" class="btn btn-default add-to-cart"><i
                                                                class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="col-sm-4">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="productinfo text-center">
                                                        <a href="product-details.html"><img
                                                                src="../images/home/recommend1.jpg" alt=""/></a>
                                                        <h2>70.000</h2>
                                                        <p>Áo thun nữ</p>
                                                        <a href="#" class="btn btn-default add-to-cart"><i
                                                                class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="productinfo text-center">
                                                        <a href="product-details.html"><img
                                                                src="../images/home/recommend2.jpg" alt=""/></a>
                                                        <h2>35.000</h2>
                                                        <p>Áo thun nữ</p>
                                                        <a href="#" class="btn btn-default add-to-cart"><i
                                                                class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="productinfo text-center">
                                                        <a href="product-details.html"><img
                                                                src="../images/home/recommend3.jpg" alt=""/></a>
                                                        <h2>30.000</h2>
                                                        <p>Áo thun nữ</p>
                                                        <a href="#" class="btn btn-default add-to-cart"><i
                                                                class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <a class="left recommended-item-control" href="#recommended-item-carousel"
                                   data-slide="prev">
                                    <i class="fa fa-angle-left"></i>
                                </a>
                                <a class="right recommended-item-control" href="#recommended-item-carousel"
                                   data-slide="next">
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>
    </jsp:body>

</t:genericpage>
