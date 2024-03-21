<%-- 
    Document   : detailList
    Created on : Mar 19, 2024, 2:42:51 AM
    Author     : Admin
--%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
        
        <%@include  file="navad.jsp"%>	
        <form>
        <section class="section main-section">
    <div class="grid grid-cols-1 gap-6 lg:grid-cols-2 mb-6">
   
      <div class="card">
        <header class="card-header">
          <p class="card-header-title">
            <span class="icon"><i class="mdi mdi-account"></i></span>
            Order Detail
          </p>
        </header>
        <div class="card-content">
          <hr>
            <div class="field">
            <label class="label">Account</label>
            <div class="control">
              <input type="text" readonly value="${nameA}" class="input is-static">
            </div>
          </div>
                <div class="field">
            <label class="label">OrderID</label>
            <div class="control">
              <input type="text" readonly value="${list.getoID()}" class="input is-static">
            </div>
          </div>
          <div class="field">
            <label class="label">Custome Name</label>
            <div class="control">
              <input type="text" readonly value="${list.getCname()}" class="input is-static">
            </div>
          </div>
          <hr>
          <div class="field">
            <label class="label">Phone</label>
            <div class="control">
              <input type="text" readonly value="${list.getPhone()}" class="input is-static">
            </div>
          </div>
            <div class="field">
            <label class="label">Address</label>
            <div class="control">
              <input type="text" readonly value="${list.getAddress()}" class="input is-static">
            </div>
          </div>
            <div class="field">
            <label class="label">Email</label>
            <div class="control">
              <input type="text" readonly value="${list.getEmail()}" class="input is-static">
            </div>
          </div>
        </div>
      </div>
        <div class="card">
        <header class="card-header">
          <p class="card-header-title">
            <span class="icon"><i class="mdi mdi-account"></i></span>
             Detail
          </p>
        </header>
        <div class="card-content">
          <hr>
              <table>
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>Product Name</th>
                                    <th>Quantity</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${requestScope.listD}" var="c" varStatus="status">
                                    <td class="image-cell">
                                        <div class="image">
                                            <img src="${listI[status.index]}" class="rounded-full">
                                        </div>
                                    </td>
                                    <td >${listN[status.index]}</td>
                                    <td>${c.quantity}</td>
                                    
                                </tr> 
                                </c:forEach>
                            </tbody>
                        </table>
      
        </div>
      </div>
    </div>
  
  </section>
              </form>
    </body>
</html>
