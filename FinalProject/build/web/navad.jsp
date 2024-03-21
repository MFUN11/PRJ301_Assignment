<%-- 
    Document   : navad
    Created on : Mar 14, 2024, 12:24:40 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
               <nav id="navbar-main" class="navbar is-fixed-top">
                <div class="navbar-brand">
                    <a class="navbar-item mobile-aside-button">
                        <span class="icon"><i class="mdi mdi-forwardburger mdi-24px"></i></span>
                    </a>
                
                </div>
                <div class="navbar-brand is-right">
                    <a class="navbar-item --jb-navbar-menu-toggle" data-target="navbar-menu">
                        <span class="icon"><i class="mdi mdi-dots-vertical mdi-24px"></i></span>
                    </a>
                </div>
                <div class="navbar-menu" id="navbar-menu">
                    <div class="navbar-end">
                        <div class="navbar-item dropdown has-divider">

                        </div>
                        <div class="navbar-item dropdown has-divider has-user-avatar">
                            <a class="navbar-link">
                                <div class="user-avatar">
                                    <img src="https://avatars.dicebear.com/v2/initials/john-doe.svg" alt="John Doe" class="rounded-full">
                                </div>
                                <div class="is-user-name"><span>Admin<span></div>
                            </a>
                       
                    </div>
                </div>
            </nav>
        <aside class="aside is-placed-left is-expanded">
                <div class="aside-tools">
                    <div>
                        Admin <b class="font-black">One</b>
                    </div>
                </div>
                <div class="menu is-menu-main">
                    <p class="menu-label">General</p>
                    <ul class="menu-list">
                        <li class="--set-active-profile-html">
                            <a href="olist">
                                <span class="icon"><i class="mdi mdi-desktop-mac"></i></span>
                                <span class="menu-item-label">Dashboard</span>
                            </a>
                        </li>
                    </ul>
                    <p class="menu-label">Examples</p>
                    <ul class="menu-list">
                        <li class="--set-active-tables-html">
                            <a href="admin">
                                <span class="icon"><i class="mdi mdi-table"></i></span>
                                <span class="menu-item-label">Products</span>
                            </a>
                        </li>
                   
                        <li class="--set-active-profile-html">
                            <a href="logout">
                                <span class="icon"><i class="mdi mdi-account-circle"></i></span>
                                <span class="menu-item-label">Logout</span>
                            </a>
                        </li>
                  
                    </ul>
                </div>
            </aside>
    </body>
</html>
