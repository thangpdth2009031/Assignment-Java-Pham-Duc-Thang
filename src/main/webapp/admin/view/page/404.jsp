<%--
  Created by IntelliJ IDEA.
  User: DUCTHANG
  Date: 6/13/2022
  Time: 9:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en" class="h-100">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Focus - Bootstrap Admin Dashboard </title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/admin/images/logo-food.png">
    <link href="${pageContext.request.contextPath}/admin/css/style.css" rel="stylesheet">

</head>

<body class="h-100">
<div class="authincation h-100">
    <div class="container-fluid h-100">
        <div class="row justify-content-center h-100 align-items-center">
            <div class="col-md-5">
                <div class="form-input-content text-center">
                    <div class="mb-5">
                        <a class="btn btn-primary" href="${pageContext.request.contextPath}/admin/food/list">Back to Home</a>
                    </div>
                    <h1 class="error-text font-weight-bold">404</h1>
                    <h4 class="mt-4"><i class="fa fa-exclamation-triangle text-warning"></i> The page you were looking for is not found!</h4>
                    <p>You may have mistyped the address or the page may have moved.</p>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>
