<%-- 
    Document   : update
    Created on : Mar 14, 2024, 8:35:12 PM
    Author     : Admin
--%>

<%-- 
    Document   : add
    Created on : Mar 14, 2024, 1:48:37 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vn" >
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Update</title>

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
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag() {
                dataLayer.push(arguments);
            }
            gtag('js', new Date());
            gtag('config', 'UA-130795909-1');
        </script>

    </head>
    <body>

        <div id="app">
            <section class="is-title-bar">
                <div class="flex flex-col md:flex-row items-center justify-between space-y-6 md:space-y-0">
                    <ul>
                        <li>Admin</li>
                        <li>Edit Product</li>
                    </ul>
                </div>
            </section>

            <section class="is-hero-bar">
                <div class="flex flex-col md:flex-row items-center justify-between space-y-6 md:space-y-0">
                    <h1 class="title">
                        Product
                    </h1>
                </div>
            </section>

            <section class="section main-section">
                <div class="grid grid-cols-1 gap-6 lg:grid-cols-2 mb-6">
                    <div class="card">
                        <header class="card-header">
                            <p class="card-header-title">
                                <span class="icon"><i class="mdi mdi-account-circle"></i></span>
                                Update Product
                            </p>
                        </header>
                        <div class="card-content">
                            <c:set value="${requestScope.list}" var="s">
                            </c:set>
                            <form action="update" method="post">
                                <div class="field">
                                    <label class="label">Image</label>
                                    <div class="field-body">
                                        <div class="field file">
                                            <label class="upload control">
                                                <a class="button blue">
                                                    Upload
                                                </a>
                                                <input type="text" name="image" value="${requestScope.list.getImage()}">
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <div class="field">
                                    <label class="label">Product ID</label>
                                    <div class="field-body">
                                        <div class="field">
                                            <div class="control">
                                                <input type="text" readonly value="${requestScope.list.getPID()}" autocomplete="on" name="id" class="input" required>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="field">
                                    <label class="label">Product name</label>
                                    <div class="field-body">
                                        <div class="field">
                                            <div class="control">
                                                <input type="text" autocomplete="on" name="name" value="${s.getPName()}" class="input" required>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="field">
                                    <label class="label">Price</label>
                                    <div class="field-body">
                                        <div class="field">
                                            <div class="control">
                                                <input type="text" autocomplete="on" name="price" value="${s.getPrice()}" class="input" required>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="field">
                                    <label class="label">Title</label>
                                    <div class="field-body">
                                        <div class="field">
                                            <div class="control">
                                                <input type="text" value="${s.getTitle()}"  autocomplete="on" name="title"class="input" required>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="field">
                                    <label class="label">Description</label>
                                    <div class="field-body">
                                        <div class="field">
                                            <div class="control">
                                                <input type="text" value="${s.getDesc()}"  autocomplete="on" name="desc" class="input" required>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="field">
                                    <label class="label">Amount</label>
                                    <div class="field-body">
                                        <div class="field">
                                            <div class="control">
                                                <input type="number" value="${s.getAmount()}"  autocomplete="on" name="amount" class="input" required>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="field">
                                    <label class="label">Category</label>
                                    <div class="field-body">
                                        <div class="field">
                                            <div class="control">
                                                <select name="cate">
                                                    <c:forEach items="${requestScope.cate}" var="ca">
                                                        <option value="${ca.cID}">
                                                            ${ca.cName}
                                                        </option>   
                                                    </c:forEach>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <div class="field">
                                    <div class="control">
                                        <input type="submit"  value="Submit"class="button green">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                </div>

            </section>



            <!-- Scripts below are for demo only -->
            <script type="text/javascript" src="js/main.min.js?v=1628755089081"></script>


            <script>
            !function (f, b, e, v, n, t, s)
            {
                if (f.fbq)
                    return;
                n = f.fbq = function () {
                    n.callMethod ?
                            n.callMethod.apply(n, arguments) : n.queue.push(arguments)
                };
                if (!f._fbq)
                    f._fbq = n;
                n.push = n;
                n.loaded = !0;
                n.version = '2.0';
                n.queue = [];
                t = b.createElement(e);
                t.async = !0;
                t.src = v;
                s = b.getElementsByTagName(e)[0];
                s.parentNode.insertBefore(t, s)
            }(window, document, 'script',
                    'https://connect.facebook.net/en_US/fbevents.js');
            fbq('init', '658339141622648');
            fbq('track', 'PageView');
            </script>
            <noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=658339141622648&ev=PageView&noscript=1"/></noscript>

            <!-- Icons below are for demo only. Feel free to use any icon pack. Docs: https://bulma.io/documentation/elements/icon/ -->
            <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.9.95/css/materialdesignicons.min.css">

            </body>
            </html>


