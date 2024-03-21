<%-- 
    Document   : product
    Created on : Mar 14, 2024, 12:00:53 AM
    Author     : Admin
--%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vn">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Tables - Admin One Tailwind CSS Admin Dashboard</title>

        <!-- Tailwind is included -->
        <link rel="stylesheet" href="css/main.css?v=1628755089081">

        <link rel="apple-touch-icon" sizes="180x180" href="apple-touch-icon.png"/>
        <link rel="icon" type="image/png" sizes="32x32" href="favicon-32x32.png"/>
        <link rel="icon" type="image/png" sizes="16x16" href="favicon-16x16.png"/>
        <link rel="mask-icon" href="safari-pinned-tab.svg" color="#00b4b6"/>

        <meta name="description" content="Admin One - free Tailwind dashboard">

        <meta property="og:url" content="https://justboil.github.io/admin-one-tailwind/">
        <meta property="og:site_name" content="JustBoil.me">
        <meta property="og:title" content="Admin One HTML">
        <meta property="og:description" content="Admin One - free Tailwind dashboard">
        <meta property="og:image" content="https://justboil.me/images/one-tailwind/repository-preview-hi-res.png">
        <meta property="og:image:type" content="image/png">
        <meta property="og:image:width" content="1920">
        <meta property="og:image:height" content="960">

        <meta property="twitter:card" content="summary_large_image">
        <meta property="twitter:title" content="Admin One HTML">
        <meta property="twitter:description" content="Admin One - free Tailwind dashboard">
        <meta property="twitter:image:src" content="https://justboil.me/images/one-tailwind/repository-preview-hi-res.png">
        <meta property="twitter:image:width" content="1920">
        <meta property="twitter:image:height" content="960">

        <!-- Global site tag (gtag.js) - Google Analytics -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-130795909-1"></script>
   
    <script type="text/javascript">
            function doDelete(id){
                if(confirm("are sure to delete "+id)){
                    window.location="delete?id="+id;
                }
            }
        </script>
    </head>
    <body>

        <div id="app">

        <%@include  file="navad.jsp"%>	

            <section class="is-title-bar">
                <div class="flex flex-col md:flex-row items-center justify-between space-y-6 md:space-y-0">
                    <ul>
                        <li>Admin</li>
                        <li>Tables</li>
                    </ul>

                </div>
            </section>


            <section class="section main-section">
                <div class="notification blue">
                    <div class="flex flex-col md:flex-row items-center justify-between space-y-3 md:space-y-0">
                        <div>
                            <span class="icon"><i class="mdi mdi-buffer"></i></span>
                            <b>Product table</b>
                        </div>                             
                        <button type="button" class="button small textual --jb-notification-dismiss"> <a href="cate.jsp">Add New Category</a></button>
         
                        <button type="button" class="button small textual --jb-notification-dismiss"> <a href="add">Add New Product</a></button>
                    </div>
                </div>
                <div class="card has-table">
                    <header class="card-header">
                        <p class="card-header-title">
                            <span class="icon"><i class="mdi mdi-account-multiple"></i></span>
                            Product
                        </p>
                        <a href="#" class="card-header-icon">
                            <span class="icon"><i class="mdi mdi-reload"></i></span>
                        </a>
                    </header>
                    <div class="card-content">
                            <table>
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>Product ID</th>
                                    <th>Product Name</th>
                                    <th>Price</th>
                                    <th>Amount</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${requestScope.list}" var="c">
                                   <tr>
                                    <td class="image-cell">
                                        <div class="image">
                                            <img src="${c.getImage()}" class="rounded-full">
                                        </div>
                                    </td>
                                    <td >${c.getPID()}</td>
                                    <td>${c.getPName()}</td>
                                    <td ><fmt:formatNumber pattern="###,###" value="${c.getPrice()}"/></td>
                                    <td>${c.getAmount()}</td>
                                    <td class="actions-cell">
                                        <div class="buttons right nowrap">
                                            <button class="button small green --jb-modal"  data-target="sample-modal-2" type="button">
                                                <span class="icon"><a href="update?id=${c.getPID()}" class="mdi mdi-eye"></a></span>
                                            </button>
                                            <button class="button small red --jb-modal" data-target="sample-modal" type="button">
                                                <span class="icon"><i href="#" onclick="doDelete('${c.getPID()}')"class="mdi mdi-trash-can"></i></span>
                                            </button>
                                        </div>
                                    </td>
                                </tr> 
                                </c:forEach>
                                
                            </tbody>
                        </table>
                       
                    </div>
                </div>

  


            </section>




        </div>

        <!-- Scripts below are for demo only -->
        <script type="text/javascript" src="js/main.min.js?v=1628755089081"></script>



        <noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=658339141622648&ev=PageView&noscript=1"/></noscript>

        <!-- Icons below are for demo only. Feel free to use any icon pack. Docs: https://bulma.io/documentation/elements/icon/ -->
        <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.9.95/css/materialdesignicons.min.css">

    </body>
</html>
