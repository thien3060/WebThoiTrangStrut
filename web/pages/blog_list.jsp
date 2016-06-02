<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 6/2/2016
  Time: 9:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:genericpage>
    <jsp:attribute name="page_title">
      Blog List
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
                                    <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[250,450]" id="sl2" ><br />
                                    <b class="pull-left">150.000</b> <b class="pull-right">6.000.000</b>
                                </div>
                            </div><!--/price-range-->

                            <div class="shipping text-center"><!--shipping-->
                                <img src="images/home/shipping.jpg" alt="" />
                            </div><!--/shipping-->
                        </div>
                    </div>
                    <div class="col-sm-9">
                        <div class="blog-post-area">
                            <h2 class="title text-center">Bài viết hay nhất về sản phẩm</h2>
                            <div class="single-blog-post">
                                <h3><a href="blog-single.html">Ven- sau khi nhận sản phẩm của cửa hàng</a></h3>
                                <div class="post-meta">
                                    <ul>
                                        <li><i class="fa fa-user"></i> Ven Do</li>
                                        <li><i class="fa fa-clock-o"></i> 1:33 pm</li>
                                        <li><i class="fa fa-calendar"></i> DEC 27, 2015</li>
                                    </ul>
								<span>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star-half-o"></i>
								</span>
                                </div>
                                <a href="blog-single.html">
                                    <img src="images/blog/blog-one.jpg" alt="">
                                </a>
                                <p>Tôi rất hài lòng về sản phẩm của cửa hàng và dịch vụ của các bạn. Tôi rất hài lòng...</p>
                                <a  class="btn btn-primary" href="blog-single.html">Đọc tiếp</a>
                            </div>
                            <div class="single-blog-post">
                                <h3><a href="blog-single.html">Ven- sau khi nhận sản phẩm của cửa hàng</a></h3>
                                <div class="post-meta">
                                    <ul>
                                        <li><i class="fa fa-user"></i> Ven Do</li>
                                        <li><i class="fa fa-clock-o"></i> 1:33 pm</li>
                                        <li><i class="fa fa-calendar"></i> DEC 27, 2015</li>
                                    </ul>
								<span>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-half-o"></i>
								</span>
                                </div>
                                <a href="">
                                    <img src="images/blog/blog-two.jpg" alt="">
                                </a>
                                <p>Tôi rất hài lòng về sản phẩm của cửa hàng và dịch vụ của các bạn. Tôi rất hài lòng...</p>
                                <a  class="btn btn-primary" href="">Đọc tiếp</a>
                            </div>
                            <div class="single-blog-post">
                                <h3><a href="blog-single.html">Ven- sau khi nhận sản phẩm của cửa hàng</a></h3>
                                <div class="post-meta">
                                    <ul>
                                        <li><i class="fa fa-user"></i> Ven Do</li>
                                        <li><i class="fa fa-clock-o"></i> 1:33 pm</li>
                                        <li><i class="fa fa-calendar"></i> DEC 27, 2015</li>
                                    </ul>
								<span>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-half-o"></i>
								</span>
                                </div>
                                <a href="blog-single.html">
                                    <img src="images/blog/blog-three.jpg" alt="">
                                </a>
                                <p>Tôi rất hài lòng về sản phẩm của cửa hàng và dịch vụ của các bạn. Tôi rất hài lòng...</p>
                                <a  class="btn btn-primary" href="blog-single.html">Đọc tiếp</a>
                            </div>
                            <div class="pagination-area">
                                <ul class="pagination">
                                    <li><a href="" class="active">1</a></li>
                                    <li><a href="">2</a></li>
                                    <li><a href="">3</a></li>
                                    <li><a href=""><i class="fa fa-angle-double-right"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </jsp:body>

</t:genericpage>