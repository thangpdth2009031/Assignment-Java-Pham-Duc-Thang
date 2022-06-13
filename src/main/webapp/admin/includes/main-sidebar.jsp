<%--
  Created by IntelliJ IDEA.
  User: DUCTHANG
  Date: 6/1/2022
  Time: 11:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="quixnav">
    <div class="quixnav-scroll">
        <ul class="metismenu" id="menu">
            <li class="nav-label first">Main Menu</li>
            <!-- <li><a href="index.html"><i class="icon icon-single-04"></i><span class="nav-text">Dashboard</span></a>
            </li> -->
            <li><a class="has-arrow" href="javascript:void(0)" aria-expanded="false"><i
                    class="icon icon-single-04"></i><span class="nav-text">Dashboard</span></a>
                <ul aria-expanded="false">
                    <li><a href="/admin/food/list">Dashboard 1</a></li>
                    <li><a href="/admin/food/list">Dashboard 2</a></li></ul>
            </li>

            <li class="nav-label">Manage</li>
            <li><a class="has-arrow" href="javascript:void(0)" aria-expanded="false"><i
                    class="icon icon-app-store"></i><span class="nav-text">Food</span></a>
                <ul aria-expanded="false">
                    <li><a href="/admin/food/list">Manage Food</a></li>
                    <li><a href="/admin/food/create">Create Food</a></li>
                </ul>
            </li>

            <li><a class="has-arrow" href="javascript:void(0)" aria-expanded="false"><i
                    class="icon icon-app-store"></i><span class="nav-text">Category</span></a>
                <ul aria-expanded="false">
                    <li><a href="/admin/category/list">Manage Category</a></li>
                    <li><a href="/admin/category/create">Create Category</a></li>
                </ul>
            </li>
        </ul>
    </div>
</div>
