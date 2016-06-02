<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 6/1/2016
  Time: 3:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:genericpage>
    <jsp:attribute name="page_title">
      Login - Register
    </jsp:attribute>

    <jsp:body>
        <section id="form"><!--form-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-4 col-sm-offset-1">
                        <div class="login-form"><!--login form-->
                            <h2>Đăng nhập</h2>
                            <form action="#">
                                <input type="text" placeholder="Tên"/>
                                <input type="email" placeholder="Email "/>
							<span>
								<input type="checkbox" class="checkbox">
								Nhớ tôi
							</span>
                                <button type="submit" class="btn btn-default">Đăng nhập</button>
                            </form>
                        </div><!--/login form-->
                    </div>
                    <div class="col-sm-1">
                        <h2 class="or">Hoặc</h2>
                    </div>
                    <div class="col-sm-4">
                        <div class="signup-form"><!--sign up form-->
                            <h2>Đăng ký!</h2>
                            <form action="#">
                                <input type="text" placeholder="Tên"/>
                                <input type="email" placeholder="Email "/>
                                <input type="password" placeholder="Mật khẩu"/>
                                <button type="submit" class="btn btn-default">Đăng ký</button>
                            </form>
                        </div><!--/sign up form-->
                    </div>
                </div>
            </div>
        </section>
        <!--/form-->
    </jsp:body>

</t:genericpage>