<%--
  Created by IntelliJ IDEA.
  User: DUCTHANG
  Date: 6/2/2022
  Time: 6:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="pdthang.assignmentwcdphamducthang.entity.Category" %>
<%
    List<Category> categoryList = (List<Category>) request.getAttribute("categories");
    if (categoryList == null) {
        categoryList = new ArrayList<>();
    }
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="/admin/includes/head.jsp">
    <jsp:param name="title" value="List Category"/>
</jsp:include>
<body>

<!--*******************
    Preloader start
********************-->
<div id="preloader">
    <div class="sk-three-bounce">
        <div class="sk-child sk-bounce1"></div>
        <div class="sk-child sk-bounce2"></div>
        <div class="sk-child sk-bounce3"></div>
    </div>
</div>
<!--*******************
    Preloader end
********************-->


<!--**********************************
    Main wrapper start
***********************************-->
<div id="main-wrapper">

    <!--**********************************
        Nav header start
    ***********************************-->
    <jsp:include page="/admin/includes/nav-header.jsp"/>
    <!--**********************************
        Nav header end
    ***********************************-->

    <!--**********************************
        Header start
    ***********************************-->
    <jsp:include page="/admin/includes/header.jsp"/>
    <!--**********************************
        Header end ti-comment-alt
    ***********************************-->

    <!--**********************************
        Sidebar start
    ***********************************-->
    <jsp:include page="/admin/includes/main-sidebar.jsp"/>
    <!--**********************************
        Sidebar end
    ***********************************-->

    <!--**********************************
        Content body start
    ***********************************-->
    <div class="content-body">
        <div class="container-fluid">

            <!-- row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <a href="/admin/category/create" style="width: 120px!important;" class="btn btn-primary">
                                <span class="align-middle"><i class="ti-plus"></i></span> Create New
                            </a>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped verticle-middle table-responsive-sm">
                                    <thead>
                                    <tr>
                                        <th scope="col">Id</th>
                                        <th scope="col">Name</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <%for (int i = 0; i < categoryList.size(); i++) {%>
                                    <tr class="<%=i%2 == 0 ? "" : "odd"%>">
                                        <td><%=categoryList.get(i).getId()%></td>
                                        <td><%=categoryList.get(i).getName()%></td>
                                        <td>
                                            <span>
                                                <a href="${pageContext.request.contextPath}/products/update?id=<%=categoryList.get(i).getId()%>" class="mr-4" data-toggle="tooltip"
                                                   data-placement="top" title="Edit"><i
                                                        class="fa fa-pencil color-muted"></i> </a><a
                                                    href="${pageContext.request.contextPath}/products/delete?id=<%=categoryList.get(i).getId()%>" data-toggle="tooltip"
                                                    data-placement="top" title="Close"><i
                                                    class="fa fa-close color-danger"></i></a></span>
                                          </td>
                                    </tr>
                                    <%}%>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--**********************************
        Content body end
    ***********************************-->


    <!--**********************************
        Footer start
    ***********************************-->
    <div class="footer">
        <div class="copyright">
            <p>Copyright © Designed &amp; Developed by <a href="#" target="_blank">Quixkit</a> 2019</p>
        </div>
    </div>
    <!--**********************************
        Footer end
    ***********************************-->

    <!--**********************************
       Support ticket button start
    ***********************************-->

    <!--**********************************
       Support ticket button end
    ***********************************-->


</div>
<!--**********************************
    Main wrapper end
***********************************-->

<!--**********************************
    Scripts
***********************************-->
<!-- Required vendors -->
<jsp:include page="/admin/includes/script.jsp"/>

</body>
</html>
