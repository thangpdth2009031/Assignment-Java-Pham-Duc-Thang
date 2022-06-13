<%@ page import="pdthang.assignmentwcdphamducthang.entity.Food" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="US-ASCII" %>
<%
    List<Food> foods = (ArrayList<Food>) request.getAttribute("foods");
    if (foods == null) {
        foods = new ArrayList<>();
    }
%>
<!DOCTYPE html>
<html lang="en">

<jsp:include page="/admin/includes/head.jsp">
    <jsp:param name="title" value="List Food"/>
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
                            <a href="${pageContext.request.contextPath}/admin/food/create" style="width: 120px!important;" data-target="#add-category" class="btn btn-primary btn-event w-100">
                                <span class="align-middle"><i class="ti-plus"></i></span> Create New
                            </a>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped verticle-middle table-responsive-sm">
                                    <thead>
                                    <tr>
                                        <th scope="col">Id</th>
                                        <th scope="col">Thumbnail</th>
                                        <th scope="col">Name</th>
                                        <th scope="col">Price</th>
                                        <th scope="col">Description</th>
                                        <th scope="col">Status</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <%for (int i = 0; i < foods.size(); i++) {%>
                                    <tr class="<%=i%2 == 0 ? "" : "odd"%>">
                                        <td><%=foods.get(i).getId()%></td>
                                        <td><img style="width: 70px; object-fit: cover;height: 70px" src="<%= foods.get(i).getAvatar() %>" /></td>
                                        <td><%=foods.get(i).getNameFood()%></td>
                                        <td><%=foods.get(i).getPrice()%></td>
                                        <td><%=foods.get(i).getDescription()%></td>
                                        <td>
                                            <%
                                                if(foods.get(i).getStatus().getValue() == 1) {
                                            %>
                                                    <span class="badge badge-success">ARE SELLING</span>
                                                <%}%>

                                            </td>
                                        <td>
                                            <span>
                                                <a href="${pageContext.request.contextPath}/admin/food/update?id=<%=foods.get(i).getId()%>" class="mr-4" data-toggle="tooltip"
                                                   data-placement="top" title="Edit"><i
                                                        class="fa fa-pencil color-muted"></i> </a><a
                                                    href="${pageContext.request.contextPath}/admin/food/delete?id=<%=foods.get(i).getId()%>" data-toggle="tooltip"
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
