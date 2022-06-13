<%--
  Created by IntelliJ IDEA.
  User: DUCTHANG
  Date: 6/1/2022
  Time: 11:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title><%= request.getParameter("title")%> - Admin 5 Sao </title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/admin/images/logo-food.png">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/vendor/owl-carousel/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/vendor/owl-carousel/css/owl.theme.default.min.css">
    <link href="${pageContext.request.contextPath}/admin/vendor/jqvmap/css/jqvmap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/admin/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/admin/vendor/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
    <!-- Clockpicker -->
    <link href="${pageContext.request.contextPath}/admin/vendor/clockpicker/css/bootstrap-clockpicker.min.css" rel="stylesheet">
    <!-- asColorpicker -->
    <link href="${pageContext.request.contextPath}/admin/vendor/jquery-asColorPicker/css/asColorPicker.min.css" rel="stylesheet">
    <!-- Material color picker -->
    <link href="${pageContext.request.contextPath}/admin/vendor/bootstrap-material-datetimepicker/css/bootstrap-material-datetimepicker.css" rel="stylesheet">
    <!-- Pick date -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/vendor/pickadate/themes/default.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/vendor/pickadate/themes/default.date.css">
    <link href="${pageContext.request.contextPath}/admin/vendor/summernote/summernote.css" rel="stylesheet">
    <style>
        .valid {
            color: red;
            padding: 0;
            margin-bottom: 0;
            font-size: 13px;
        }
        .ck-content {
            height: 130px!important;
        }
        #exampleFormControlTextarea1 {
            height: 104px;
        }
        .table {
            color: black;
        }
    </style>
</head>