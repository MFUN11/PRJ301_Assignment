<%-- 
    Document   : admin
    Created on : Mar 13, 2024, 11:15:06 PM
    Author     : Admin
--%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Dashboard - Admin One Tailwind CSS Admin Dashboard</title>

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
                        <li>Dashboard</li>
                    </ul>
               
                </div>
            </section>
            <section class="is-hero-bar">
                <div class="flex flex-col md:flex-row items-center justify-between space-y-6 md:space-y-0">
                    <h1 class="title">
                        Dashboard
                    </h1>
                    <button class="button light">Button</button>
                </div>
            </section>

            <section class="section main-section">
                <div class="grid gap-6 grid-cols-1 md:grid-cols-3 mb-6">
                    <div class="card">
                        <div class="card-content">
                            <div class="flex items-center justify-between">
                                <div class="widget-label">
                                    <h3>
                                        Clients
                                    </h3>
                                    <h1>
                                        512
                                    </h1>
                                </div>
                                <span class="icon widget-icon text-green-500"><i class="mdi mdi-account-multiple mdi-48px"></i></span>
                            </div>
                        </div>
                    </div>
                  
                </div>

                <div class="notification blue">
                    <div class="flex flex-col md:flex-row items-center justify-between space-y-3 md:space-y-0">
                        <div>
                            <span class="icon"><i class="mdi mdi-buffer"></i></span>
                            <b>Responsive table</b>
                        </div>
                        <button type="button" class="button small textual --jb-notification-dismiss">Dismiss</button>
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
                                    <td>${c.getPrice()}</td>
                                    <td>${c.getAmount()}</td>
                                    <td class="actions-cell">
                                        <div class="buttons right nowrap">
                                            <button class="button small green --jb-modal"  data-target="sample-modal-2" type="button">
                                                <span class="icon"><i class="mdi mdi-eye"></i></span>
                                            </button>
                                            <button class="button small red --jb-modal" data-target="sample-modal" type="button">
                                                <span class="icon"><i class="mdi mdi-trash-can"></i></span>
                                            </button>
                                        </div>
                                    </td>
                                </tr> 
                                </c:forEach>
                                
                            </tbody>
                        </table>

                </div>
            </section>


            <div id="sample-modal" class="modal">
                <div class="modal-background --jb-modal-close"></div>
                <div class="modal-card">
                    <header class="modal-card-head">
                        <p class="modal-card-title">Sample modal</p>
                    </header>
                    <section class="modal-card-body">
                        <p>Lorem ipsum dolor sit amet <b>adipiscing elit</b></p>
                        <p>This is sample modal</p>
                    </section>
                    <footer class="modal-card-foot">
                        <button class="button --jb-modal-close">Cancel</button>
                        <button class="button red --jb-modal-close">Confirm</button>
                    </footer>
                </div>
            </div>

            <div id="sample-modal-2" class="modal">
                <div class="modal-background --jb-modal-close"></div>
                <div class="modal-card">
                    <header class="modal-card-head">
                        <p class="modal-card-title">Sample modal</p>
                    </header>
                    <section class="modal-card-body">
                        <p>Lorem ipsum dolor sit amet <b>adipiscing elit</b></p>
                        <p>This is sample modal</p>
                    </section>
                    <footer class="modal-card-foot">
                        <button class="button --jb-modal-close">Cancel</button>
                        <button class="button blue --jb-modal-close">Confirm</button>
                    </footer>
                </div>
            </div>

        </div>

        <!-- Scripts below are for demo only -->
        <script type="text/javascript" src="js/main.min.js?v=1628755089081"></script>

        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
        <script type="text/javascript" src="js/chart.sample.min.js"></script>


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
