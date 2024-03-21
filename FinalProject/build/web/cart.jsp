<%-- 
    Document   : cart
    Created on : Feb 28, 2024, 10:58:30 PM
    Author     : Admin
--%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Minishop</title>
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
                        <p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Home</a></span> <span>Cart</span></p>
                        <h1 class="mb-0 bread">My Wishlist</h1>
                    </div>
                </div>
            </div>
        </div>

        <section class="ftco-section ftco-cart">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 ftco-animate">
                        <div class="cart-list">
                            <table class="table">
                                <thead class="thead-primary">
                                    <tr class="text-center">
                                        <th>&nbsp;</th>
                                        <th>&nbsp;</th>
                                        <th>Product</th>
                                        <th>Price</th>
                                        <th>Quantity</th>
                                        <th>Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:set value="${sessionScope.cart}" var="c"></c:set>
                                    <c:set var="m" value="0"></c:set>
                                    <c:forEach var="t" items="${c.getItems()}">
                                        <c:set var="productId" value="${t.product.getPID()}" />

                                        <tr class="text-center">
                                            <td class="product-remove">
                                                <form  action="process" method="post"> 
                                                    <input type="hidden" name="id" value="${t.product.getPID()}">
                                                    <button type="submit" class="btn-link"><span class="ion-ios-close"></span></button>
                                                </form>
                                            </td>

                                            <td class="image-prod"><div class="img" style="background-image:url(${t.product.image});"></div></td>

                                            <td class="product-name">
                                                <h3>${t.product.title}</h3>
                                            </td>

                                            <td class="price"><fmt:formatNumber pattern="###,###" value="${t.product.price}"/></td>

                                            <td class="quantity">
                                                <div class="input-group mb-3">
                                                    <button  class="product-remove"><a href="process?num=-1&id=${t.product.getPID()}"> <i  class="ion-ios-add"></i></a></button>
                                                    <input type="number" readonly name="quantity" class="quantity form-control input-number" value="${t.quantity}" >
                                                    <button  class="product-remove"><a href="process?num=1&id=${t.product.getPID()}"> <i  class="ion-ios-add"></i></a></button>
                                                </div>
                                            </td>
                                            ${requestScope.quan};
                                            <td class="total"><fmt:formatNumber pattern="###,###" value="${c.getSubTotal(productId)}"/></td>
                                        </tr>
                                    </c:forEach>
                                          <tr class="text-center">
                                        <th>&nbsp;</th>
                                        <th>&nbsp;</th>
                                        <th><strong>Total</strong></th>
                                        <th></th>
                                        <th></th>
                                        <th><fmt:formatNumber pattern="###,###" value="${sessionScope.cart.getTotal()}"/></th>
                                    </tr>
                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-start">
                    <div class="col col-lg-5 col-md-6 mt-5 cart-wrap ftco-animate">
                        <div class="cart-total mb-3">
                            <h3>Cart Totals</h3>
                            <p class="d-flex">
                                <span>Delivery</span>
                                <span>$0.00</span>
                            </p>
                            <hr>
                            <p class="d-flex total-price">
                                <span>Total</span>
                                <span><fmt:formatNumber pattern="###,###" value="${sessionScope.cart.getTotal()}"/></span>
                            </p>
                        </div>
                     <c:if test="${sessionScope.acc ==null}">
                        <p class="text-center"><a href="login.jsp" class="btn btn-primary py-3 px-4">Proceed to Checkout</a></p>
                  </c:if>
                     <c:if test="${sessionScope.acc !=null}">
                        <p class="text-center"><a href="checkout.jsp" class="btn btn-primary py-3 px-4">Proceed to Checkout</a></p>
                  </c:if> 
                    </div>
                </div>
            </div>
        </section>


                <%@include  file="footer.jsp"%>	



        <!-- loader -->


        <script src="js/jquery.min.js"></script>
        <script src="js/jquery-migrate-3.0.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/jquery.waypoints.min.js"></script>
        <script src="js/jquery.stellar.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/aos.js"></script>
        <script src="js/jquery.animateNumber.min.js"></script>
        <script src="js/bootstrap-datepicker.js"></script>
        <script src="js/scrollax.min.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
        <script src="js/google-map.js"></script>
        <script src="js/main.js"></script>

        <script>
                                $(document).ready(function () {

                                    var quantitiy = 0;
                                    $('.quantity-right-plus').click(function (e) {

                                        // Stop acting like a button
                                        e.preventDefault();
                                        // Get the field name
                                        var quantity = parseInt($('#quantity').val());

                                        // If is not undefined

                                        $('#quantity').val(quantity + 1);


                                        // Increment

                                    });

                                    $('.quantity-left-minus').click(function (e) {
                                        // Stop acting like a button
                                        e.preventDefault();
                                        // Get the field name
                                        var quantity = parseInt($('#quantity').val());

                                        // If is not undefined

                                        // Increment
                                        if (quantity > 0) {
                                            $('#quantity').val(quantity - 1);
                                        }
                                    });

                                });
        </script>

    </body>
</html>
