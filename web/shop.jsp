<%-- 
    Document   : shop
    Created on : Mar 8, 2022, 9:29:39 AM
    Author     : HuuTrinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Vegefoods - Free Bootstrap 4 Template by Colorlib</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
        <link rel="stylesheet" href="css/animate.css">

        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">

        <link rel="stylesheet" href="css/aos.css">

        <link rel="stylesheet" href="css/ionicons.min.css">

        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="css/jquery.timepicker.css">


        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <%@include file="./components/navbar.jsp" %>
        <div class="hero-wrap hero-bread" style="background-image: url('images/bg_1.jpg');">
            <div class="container">
                <div class="row no-gutters slider-text align-items-center justify-content-center">
                    <div class="col-md-9 ftco-animate text-center">
                        <p class="breadcrumbs"><span class="mr-2"><a href="home">Home</a></span> <span>Products</span></p>
                        <h1 class="mb-0 bread">Products</h1>
                    </div>
                </div>
            </div>
        </div>

        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-10 mb-5 text-center">
                        <ul class="product-category">
                            <li><a href="shop" class="active">All</a></li>
                                <c:forEach items="${requestScope.ListCate}" var="cate">
                                <li><a href="productDetail?cateID=${cate.cateID}">${cate.cateName}</a></li>
                                </c:forEach>
                        </ul>
                    </div>
                </div>
                <div class="row">
                    <c:forEach items="${requestScope.ListProduct}" var="product">
                        <div class="col-md-6 col-lg-3 ftco-animate">
                            <div class="product">
                                <a href="productDetail?pid=${product.pid}" class="img-prod"><img class="img-fluid" src="${product.image}" alt="Colorlib Template">

                                    <c:if test="${product.promotion!=0}">
                                        <span class="status">${product.promotion}%</span>
                                    </c:if>
                                    <c:if test="${product.promotion==0}">
                                    </c:if>

                                    <div class="overlay"></div>
                                </a>
                                <div class="text py-3 pb-4 px-3 text-center">
                                    <h3><a href="productDetail?pid=${product.pid}">${product.pname}</a></h3>
                                    <div class="d-flex">
                                        <div class="pricing">
                                            <c:if test="${product.promotion!=0}">
                                                <p class="price"><span class="mr-2 price-dc">$${product.price}</span><span class="price-sale">$${product.price*product.promotion/100}</span></p>
                                            </c:if>
                                            <c:if test="${product.promotion==0}">
                                                <p class="price"><span class="price-sale">$${product.price}</span></p>
                                            </c:if>
                                        </div>
                                    </div>
                                    <div class="bottom-area d-flex px-3">
                                        <div class="m-auto d-flex">
                                            <a href="productDetail?pid=${product.pid}" class="add-to-cart d-flex justify-content-center align-items-center text-center">
                                                <span><i class="ion-ios-menu"></i></span>
                                            </a>

                                            <c:if test="${product.promotion!=0}">
                                                <a data-id="${product.pid}" data-uri="shop" data-name="${product.pname}" data-price="${product.price*product.promotion/100}" data-measure="${product.getMeasure()}" data-quantity="${product.quantity}" data-toggle="modal" data-target="#addCartShop" href="javascript:" class="buy-now d-flex justify-content-center align-items-center mx-1">
                                                    <span><i class="ion-ios-cart"></i></span>
                                                </a>
                                            </c:if>
                                            <c:if test="${product.promotion==0}">
                                                <a data-id="${product.pid}" data-uri="shop" data-name="${product.pname}" data-price="${product.price}" data-measure="${product.getMeasure()}" data-quantity="${product.quantity}" data-toggle="modal" data-target="#addCartShop" href="javascript:" class="buy-now d-flex justify-content-center align-items-center mx-1">
                                                    <span><i class="ion-ios-cart"></i></span>
                                                </a>
                                            </c:if>
                                            <!--xu li sau ion-ios-heart-outline-->
                                            <a href="#" class="heart d-flex justify-content-center align-items-center ">
                                                <span><i class="ion-ios-heart"></i></span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <div class="row mt-5">
                    <div class="col text-center">
                        <div class="block-27">
                            <ul>
                                <li><a href="#">&lt;</a></li>
                                <li class="active"><span>1</span></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a href="#">&gt;</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section ftco-no-pt ftco-no-pb py-5 bg-light">
            <div class="container py-4">
                <div class="row d-flex justify-content-center py-5">
                    <div class="col-md-6">
                        <h2 style="font-size: 22px;" class="mb-0">Subcribe to our Newsletter</h2>
                        <span>Get e-mail updates about our latest shops and special offers</span>
                    </div>
                    <div class="col-md-6 d-flex align-items-center">
                        <form action="#" class="subscribe-form">
                            <div class="form-group d-flex">
                                <input type="text" class="form-control" placeholder="Enter email address">
                                <input type="submit" value="Subscribe" class="submit px-3">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <%@include file="./components/addcardshop.jsp" %>
        <%@include file="./components/footer.jsp" %>
    </body>
</html>
