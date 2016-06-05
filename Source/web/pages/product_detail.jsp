<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 6/2/2016
  Time: 9:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:genericpage>
    <jsp:attribute name="page_title">
      Product Detail
    </jsp:attribute>

    <jsp:body>
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
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordian" href="#mens">
                                                <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                                Quần áo nam
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="mens" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <ul>
                                                <li><a href="#">Fendi</a></li>
                                                <li><a href="#">Guess</a></li>
                                                <li><a href="#">Valentino</a></li>
                                                <li><a href="#">Dior</a></li>
                                                <li><a href="#">Versace</a></li>
                                                <li><a href="#">Armani</a></li>
                                                <li><a href="#">Prada</a></li>
                                                <li><a href="#">Dolce and Gabbana</a></li>
                                                <li><a href="#">Chanel</a></li>
                                                <li><a href="#">Gucci</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>

                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordian" href="#womens">
                                                <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                                Quần áo nữ
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="womens" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <ul>
                                                <li><a href="#">Fendi</a></li>
                                                <li><a href="#">Guess</a></li>
                                                <li><a href="#">Valentino</a></li>
                                                <li><a href="#">Dior</a></li>
                                                <li><a href="#">Versace</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="#">Quần áo trẻ con</a></h4>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="#">Thời trang mới</a></h4>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="#">Giày dép</a></h4>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="#">Phụ kiện</a></h4>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="#">Khác</a></h4>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="#">Sale off</a></h4>
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
                                <img src="images/home/shipping.jpg" alt=""/>
                            </div><!--/shipping-->

                        </div>
                    </div>

                    <div class="col-sm-9 padding-right">
                        <div class="product-details"><!--product-details-->
                            <div class="col-sm-5">
                                <div class="view-product">
                                    <img src="images/product-details/1.jpg" alt=""/>
                                    <h3>ZOOM</h3>
                                </div>
                                <div id="similar-product" class="carousel slide" data-ride="carousel">

                                    <!-- Wrapper for slides -->
                                    <div class="carousel-inner">
                                        <div class="item active">
                                            <a href=""><img src="images/product-details/similar1.jpg" alt=""></a>
                                            <a href=""><img src="images/product-details/similar2.jpg" alt=""></a>
                                            <a href=""><img src="images/product-details/similar3.jpg" alt=""></a>
                                        </div>
                                        <div class="item">
                                            <a href=""><img src="images/product-details/similar1.jpg" alt=""></a>
                                            <a href=""><img src="images/product-details/similar2.jpg" alt=""></a>
                                            <a href=""><img src="images/product-details/similar3.jpg" alt=""></a>
                                        </div>
                                        <div class="item">
                                            <a href=""><img src="images/product-details/similar1.jpg" alt=""></a>
                                            <a href=""><img src="images/product-details/similar2.jpg" alt=""></a>
                                            <a href=""><img src="images/product-details/similar3.jpg" alt=""></a>
                                        </div>

                                    </div>

                                    <!-- Controls -->
                                    <a class="left item-control" href="#similar-product" data-slide="prev">
                                        <i class="fa fa-angle-left"></i>
                                    </a>
                                    <a class="right item-control" href="#similar-product" data-slide="next">
                                        <i class="fa fa-angle-right"></i>
                                    </a>
                                </div>

                            </div>
                            <div class="col-sm-7">
                                <div class="product-information"><!--/product-information-->
                                    <img src="images/product-details/new.jpg" class="newarrival" alt=""/>
                                    <h2>Đầm nữ</h2>
                                    <p>Mã số: 1089772</p>
                                    <img src="images/product-details/rating.png" alt=""/>
								<span>
									<span>300.000</span>
									<label>Số lượng:</label>
									<input type="text" value="3"/>
									<a href="cart.html" class="btn btn-fefault cart">
										<i class="fa fa-shopping-cart"></i>
										Thêm vào giỏ
									</a>
								</span>

                                    <p><b>Sản phẩm:</b> Mới</p>
                                    <p><b>NTK:</b> Lý Quý Khánh</p>
                                    <a href=""><img src="images/product-details/share.png" class="share img-responsive"
                                                    alt=""/></a>
                                </div><!--/product-information-->
                            </div>
                        </div><!--/product-details-->

                        <div class="category-tab shop-details-tab"><!--category-tab-->
                            <div class="col-sm-12">
                                <ul class="nav nav-tabs">
                                    <li><a href="#details" data-toggle="tab">Chi tiết</a></li>
                                    <li><a href="#companyprofile" data-toggle="tab">Thông tin</a></li>
                                    <li><a href="#tag" data-toggle="tab">Tag</a></li>
                                    <li class="active"><a href="#reviews" data-toggle="tab">Bình luận </a></li>
                                </ul>
                            </div>
                            <div class="tab-content">
                                <div class="tab-pane fade" id="details">
                                    <div class="col-sm-3">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <img src="images/home/gallery1.jpg" alt=""/>
                                                    <h2>500.000</h2>
                                                    <p>Áo hai dây</p>
                                                    <button type="button" class="btn btn-default add-to-cart"><i
                                                            class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <img src="images/home/gallery2.jpg" alt=""/>
                                                    <h2>150.000</h2>
                                                    <p>Áo thun nam</p>
                                                    <button type="button" class="btn btn-default add-to-cart"><i
                                                            class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <img src="images/home/gallery3.jpg" alt=""/>
                                                    <h2>250.000</h2>
                                                    <p>Áo vec nữ</p>
                                                    <button type="button" class="btn btn-default add-to-cart"><i
                                                            class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <img src="images/home/gallery4.jpg" alt=""/>
                                                    <h2>500.000</h2>
                                                    <p>Áo thu đông</p>
                                                    <button type="button" class="btn btn-default add-to-cart"><i
                                                            class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="tab-pane fade" id="companyprofile">
                                    <div class="col-sm-3">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <img src="images/home/gallery1.jpg" alt=""/>
                                                    <h2>500.000</h2>
                                                    <p>Áo hai dây</p>
                                                    <button type="button" class="btn btn-default add-to-cart"><i
                                                            class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <img src="images/home/gallery3.jpg" alt=""/>
                                                    <h2>250.000</h2>
                                                    <p>Áo vec nữ</p>
                                                    <button type="button" class="btn btn-default add-to-cart"><i
                                                            class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <img src="images/home/gallery2.jpg" alt=""/>
                                                    <h2>150.000</h2>
                                                    <p>Áo thun nam</p>
                                                    <button type="button" class="btn btn-default add-to-cart"><i
                                                            class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <img src="images/home/gallery4.jpg" alt=""/>
                                                    <h2>500.000</h2>
                                                    <p>Áo thu đông</p>
                                                    <button type="button" class="btn btn-default add-to-cart"><i
                                                            class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="tab-pane fade" id="tag">
                                    <div class="col-sm-3">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <img src="images/home/gallery1.jpg" alt=""/>
                                                    <h2>500.000</h2>
                                                    <p>Áo hai dây</p>
                                                    <button type="button" class="btn btn-default add-to-cart"><i
                                                            class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <img src="images/home/gallery2.jpg" alt=""/>
                                                    <h2>150.000</h2>
                                                    <p>Áo thun nam</p>
                                                    <button type="button" class="btn btn-default add-to-cart"><i
                                                            class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <img src="images/home/gallery3.jpg" alt=""/>
                                                    <h2>250.000</h2>
                                                    <p>Áo vec nữ</p>
                                                    <button type="button" class="btn btn-default add-to-cart"><i
                                                            class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <img src="images/home/gallery4.jpg" alt=""/>
                                                    <h2>500.000</h2>
                                                    <p>Áo thu đông</p>
                                                    <button type="button" class="btn btn-default add-to-cart"><i
                                                            class="fa fa-shopping-cart"></i>Add to cart
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="tab-pane fade active in" id="reviews">
                                    <div class="col-sm-12">
                                        <ul>
                                            <li><a href=""><i class="fa fa-user"></i>Ven</a></li>
                                            <li><a href=""><i class="fa fa-clock-o"></i>12:41 PM</a></li>
                                            <li><a href=""><i class="fa fa-calendar-o"></i>31 DEC 2015</a></li>
                                        </ul>
                                        <p>Đầm nữ là bộ sưu tập mới nhất của nhà thiết kế Lý Quý Khánh...</p>
                                        <p><b>Viết bình luận</b></p>

                                        <form action="#">
										<span>
											<input type="text" placeholder="Tên của bạn"/>
											<input type="email" placeholder="Email "/>
										</span>
                                            <textarea name=""></textarea>
                                            <b>Bình chọn: </b> <img src="images/product-details/rating.png" alt=""/>
                                            <button type="button" class="btn btn-default pull-right">
                                                Gửi
                                            </button>
                                        </form>
                                    </div>
                                </div>

                            </div>
                        </div><!--/category-tab-->

                        <div class="recommended_items"><!--recommended_items-->
                            <h2 class="title text-center">Sản phẩm liên quan</h2>

                            <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner">
                                    <div class="item active">
                                        <div class="col-sm-4">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="productinfo text-center">
                                                        <img src="images/home/recommend2.jpg" alt=""/>
                                                        <h2>35.000</h2>
                                                        <p>Áo thun nữ</p>
                                                        <button type="button" class="btn btn-default add-to-cart"><i
                                                                class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                                        </button>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="productinfo text-center">
                                                        <img src="images/home/recommend1.jpg" alt=""/>
                                                        <h2>100.000</h2>
                                                        <p>Áo thun nữ</p>
                                                        <button type="button" class="btn btn-default add-to-cart"><i
                                                                class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                                        </button>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="productinfo text-center">
                                                        <img src="images/home/recommend3.jpg" alt=""/>
                                                        <h2>300.000</h2>
                                                        <p>Áo khoác nữ</p>
                                                        <button type="button" class="btn btn-default add-to-cart"><i
                                                                class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                                        </button>
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
                                                        <img src="images/home/recommend1.jpg" alt=""/>
                                                        <h2>35.000</h2>
                                                        <p>Áo thun nữ</p>
                                                        <button type="button" class="btn btn-default add-to-cart"><i
                                                                class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="productinfo text-center">
                                                        <img src="images/home/recommend2.jpg" alt=""/>
                                                        <h2>100.000</h2>
                                                        <p>Áo thun nữ</p>
                                                        <button type="button" class="btn btn-default add-to-cart"><i
                                                                class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="productinfo text-center">
                                                        <img src="images/home/recommend3.jpg" alt=""/>
                                                        <h2>500.000</h2>
                                                        <p>Áo hai dây</p>
                                                        <button type="button" class="btn btn-default add-to-cart"><i
                                                                class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                                        </button>
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
                        </div><!--/recommended_items-->

                    </div>
                </div>
            </div>
        </section>
    </jsp:body>

</t:genericpage>