<%-- 
    Document   : shop
    Created on : Feb 28, 2024, 11:01:28 PM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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

        <div class="hero-wrap hero-bread" style="background-image: url('images/bg_6.jpg');">
            <div class="container">
                <div class="row no-gutters slider-text align-items-center justify-content-center">
                    <div class="col-md-9 ftco-animate text-center">
                        <p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Home</a></span> <span>Shop</span></p>
                        <h1 class="mb-0 bread">Shop</h1>
                    </div>
                </div>
            </div>
        </div>

        <section class="ftco-section bg-light">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-lg-10 order-md-last">



                        <div class="row">
                                <c:forEach items="${requestScope.list}" var="o">
                            <div class="col-sm-12 col-md-12 col-lg-4 ftco-animate d-flex">
                                
                                <div class="product d-flex flex-column">
                               
                                        <a href="detail?pid=${o.getPID()}" class="img-prod"><img class="img-fluid" src="${o.getImage()}" alt="Colorlib Template">
                                            <div class="overlay"></div>
                                        </a>
                                        <div class="text py-3 pb-4 px-3">
                                            <div class="d-flex">
                                                <div class="cat">
                                                    <span>Lifestyle</span>
                                                </div>
                                            </div>
                                            <h3><a href="detail?pid=${o.getPID()}">${o.getTitle()}</a></h3>
                                            <div class="pricing">
                                                <p class="price"><span> <fmt:formatNumber pattern="###,###" value="${o.getPrice()}"/></span></p>
                                            </div>
                                            <p class="bottom-area d-flex px-3">

                                                <a href="cart?pid=${o.getPID()}&opt=add" class="add-to-cart text-center py-2 mr-1"><span value="add" name="opt">Add to cart <i class="ion-ios-add ml-1"></i></span></a>

                                                <a href="cart?pid=${o.getPID()}&opt=buy" class="buy-now text-center py-2"">Buy now<span value="add" name="opt"><i class="ion-ios-cart ml-1"></i></span></a>
                                            </p>
                                        </div>
                                   
                                </div>  
                           
                                <!-- <!-- comment -->
                            </div></c:forEach>
                        </div>


                        <--<!-- comment -->
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

                    <div class="col-md-4 col-lg-2">
                        <div class="sidebar">
                            <div class="sidebar-box-2">
                                <h2 class="heading">Categories</h2>
                                <div class="fancy-collapse-panel">
                                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                        <c:forEach items="${requestScope.listC}" var="s">
                                            <div class="panel panel-default">
                                                <div class="panel-heading" role="tab" id="headingOne">
                                                    <h4 class="panel-title">

                                                        <a  href="category?cid=${s.getcID()}" style="color: coral"> ${s.getcName()}
                                                        </a>
                                                    </h4>
                                                </div>

                                            </div>          
                                        </c:forEach>
                                        <div class="panel panel-default">
                                            <div class="panel-heading" role="tab" id="headingOne">
                                                <h4 class="panel-title">

                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne"> 
                                                    </a>
                                                </h4>
                                            </div>

                                        </div>



                                    </div>
                                </div>
                            </div>
                            <div class="sidebar-box-2">
                                <h2 class="heading">Price Range</h2>
                                <form method="post" class="colorlib-form-2">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="guests">Price from:</label>
                                                <div class="form-field">
                                                    <i class="icon icon-arrow-down3"></i>
                                                    <select name="people" id="people" class="form-control">
                                                        <option value="#">1</option>
                                                        <option value="#">200</option>
                                                        <option value="#">300</option>
                                                        <option value="#">400</option>
                                                        <option value="#">1000</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="guests">Price to:</label>
                                                <div class="form-field">
                                                    <i class="icon icon-arrow-down3"></i>
                                                    <select name="people" id="people" class="form-control">
                                                        <option value="#">2000</option>
                                                        <option value="#">4000</option>
                                                        <option value="#">6000</option>
                                                        <option value="#">8000</option>
                                                        <option value="#">10000</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%@include  file="footer.jsp"%>	
    </body>
</html>