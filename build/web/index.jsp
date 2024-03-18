<%-- 
    Document   : index.jsp
    Created on : Feb 28, 2024, 11:00:24 PM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Minishop - Free Bootstrap 4 Template by Colorlib</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">

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
    <body class="goto-here">
        <%@include  file="nav.jsp"%>	


        <!-- END nav -->

        <section id="home-section" class="hero">
            <div class="home-slider owl-carousel">
                <div class="slider-item js-fullheight">
                    <div class="overlay"></div>
                    <div class="container-fluid p-0">
                        <div class="row d-md-flex no-gutters slider-text align-items-center justify-content-end" data-scrollax-parent="true">
                            <img class="one-third order-md-last img-fluid" src="images/bg_1.png" alt="">
                            <div class="one-forth d-flex align-items-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
                                <div class="text">
                                    <span class="subheading">#New Arrival</span>
                                    <div class="horizontal">
                                        <h1 class="mb-4 mt-3">Shoes Collection 2019</h1>
                                        <p class="mb-4">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country.</p>

                                        <p><a href="list" class="btn-custom">Discover Now</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="slider-item js-fullheight">
                    <div class="overlay"></div>
                    <div class="container-fluid p-0">
                        <div class="row d-flex no-gutters slider-text align-items-center justify-content-end" data-scrollax-parent="true">
                            <img class="one-third order-md-last img-fluid" src="images/bg_2.png" alt="">
                            <div class="one-forth d-flex align-items-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
                                <div class="text">
                                    <span class="subheading">#New Arrival</span>
                                    <div class="horizontal">
                                        <h1 class="mb-4 mt-3">New Shoes Winter Collection</h1>
                                        <p class="mb-4">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country.</p>

                                        <p><a href="shop.jsp" class="btn-custom">Discover Now</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section ftco-no-pt ftco-no-pb">
            <div class="container">
                <div class="row no-gutters ftco-services">
                    <div class="col-lg-4 text-center d-flex align-self-stretch ftco-animate">
                        <div class="media block-6 services p-4 py-md-5">
                            <div class="icon d-flex justify-content-center align-items-center mb-4">
                                <span class="flaticon-bag"></span>
                            </div>
                            <div class="media-body">
                                <h3 class="heading">Free Shipping</h3>
                                <p>Enjoy the convenience of doorstep delivery without worrying about additional fees. We prioritize fast and reliable shipping to ensure that your orders reach you in a timely manner.</p>
                            </div> 
                        </div>      
                    </div>
                    <div class="col-lg-4 text-center d-flex align-self-stretch ftco-animate">
                        <div class="media block-6 services p-4 py-md-5">
                            <div class="icon d-flex justify-content-center align-items-center mb-4">
                                <span class="flaticon-customer-service"></span>
                            </div>
                            <div class="media-body">
                                <h3 class="heading">Support Customer</h3>
                                <p> We take pride in providing exceptional customer support to ensure your shopping experience is smooth, enjoyable, and stress-free. Whether you have questions about our products, need assistance with your order, or simply want to share feedback, our dedicated support team is here to help you every step of the way.</p>
                            </div>
                        </div>    
                    </div>
                    <div class="col-lg-4 text-center d-flex align-self-stretch ftco-animate">
                        <div class="media block-6 services p-4 py-md-5">
                            <div class="icon d-flex justify-content-center align-items-center mb-4">
                                <span class="flaticon-payment-security"></span>
                            </div>
                            <div class="media-body">
                                <h3 class="heading">Secure Payments</h3>
                                <p>Our secure payment gateways are trusted by millions of customers worldwide. Whether you choose to pay with credit/debit cards, PayPal, or other payment methods, rest assured that your transactions are processed securely and efficiently.</p>
                            </div>
                        </div>      
                    </div>
                </div>
            </div>
        </section>

       





        <section class="ftco-section ftco-deal bg-primary">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <img src="images/prod-1.png" class="img-fluid" alt="">
                    </div>
                    <div class="col-md-6">
                        <div class="heading-section heading-section-white">
                            <span class="subheading">Deal of the month</span>
                            <h2 class="mb-3">Deal of the month</h2>
                        </div>
                        <div id="timer" class="d-flex mb-4">
                            <div class="time" id="days"></div>
                            <div class="time pl-4" id="hours"></div>
                            <div class="time pl-4" id="minutes"></div>
                            <div class="time pl-4" id="seconds"></div>
                        </div>
                        <div class="text-deal">
                            <h2><a href="#">Nike Free RN 2019 iD</a></h2>
                            <p class="price"><span class="mr-2 price-dc">$120.00</span><span class="price-sale">$80.00</span></p>
                            <ul class="thumb-deal d-flex mt-4">
                                <li class="img" style="background-image: url(images/product-6.png);"></li>
                                <li class="img" style="background-image: url(images/product-2.png);"></li>
                                <li class="img" style="background-image: url(images/product-4.png);"></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section testimony-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5">
                        <div class="services-flow">
                            <div class="services-2 p-4 d-flex ftco-animate">
                                <div class="icon">
                                    <span class="flaticon-bag"></span>
                                </div>

                                <div class="text">
                                    <h3>Free Shipping</h3>
                                    <p class="mb-0">Separated they live in. A small river named Duden flows</p>
                                </div>
                            </div>
                            <div class="services-2 p-4 d-flex ftco-animate">
                                <div class="icon">
                                    <span class="flaticon-heart-box"></span>
                                </div>
                                <div class="text">
                                    <h3>Valuable Gifts</h3>
                                    <p class="mb-0">Separated they live in. A small river named Duden flows</p>
                                </div>
                            </div>
                            <div class="services-2 p-4 d-flex ftco-animate">
                                <div class="icon">
                                    <span class="flaticon-payment-security"></span>
                                </div>
                                <div class="text">
                                    <h3>All Day Support</h3>
                                    <p class="mb-0">Separated they live in. A small river named Duden flows</p>
                                </div>
                            </div>
                            <div class="services-2 p-4 d-flex ftco-animate">
                                <div class="icon">
                                    <span class="flaticon-customer-service"></span>
                                </div>
                                <div class="text">
                                    <h3>All Day Support</h3>
                                    <p class="mb-0">Separated they live in. A small river named Duden flows</p>
                                </div>
                            </div>
                        </div>
                    </div>
          
                </div>
            </div>
        </section>

        <%@include  file="footer.jsp"%>	

    </body>
</html>