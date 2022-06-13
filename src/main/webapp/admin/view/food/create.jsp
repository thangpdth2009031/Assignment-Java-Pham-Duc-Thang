<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="pdthang.assignmentwcdphamducthang.entity.Category" %>
<%@ page import="pdthang.assignmentwcdphamducthang.entity.Food" %>
<%@ page import="pdthang.assignmentwcdphamducthang.entity.myenum.FoodStatus" %>
<%@ page import="java.util.Objects" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int action = 1;
    String url = "/admin/food/create";
    String title = "Create new food";
    action = (int) request.getAttribute("action");
    if (action == 2) {
        url = "/admin/food/update";
        title = "Update food";
    }
    List<Category> categoryList = (List<Category>) request.getAttribute("categories");
    if (categoryList == null) {
        categoryList = new ArrayList<>();
    }
    HashMap<String, String> errors = (HashMap<String, String>) request.getAttribute("errors");
    if (errors == null) {
        errors = new HashMap<>();
    }
    Food food = (Food) request.getAttribute("food");
    if (food == null) {
        food = Food.FoodBuilder.aFood().build();
    }

%>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="/admin/includes/head.jsp">
    <jsp:param name="title" value="Create Food"/>
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
    <jsp:include page="/admin/includes/header.jsp">
        <jsp:param name="title" value="Create food"/>
    </jsp:include>
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
                <div class="col-xl-12 col-xxl-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title"><%=title%>
                            </h4>
                        </div>
                        <div class="card-body">
                            <div class="basic-form">
                                <form method="post" action="<%=url%>">
                                    <% if (action == 2) {%>
                                    <input type="hidden" name="id" value="<%=food.getId()%>">
                                    <% } %>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label>Category</label>
                                            <select name="categoryId" id="inputState" class="form-control">
                                                <% for (int i = 0; i < categoryList.size(); i++) { %>
                                                <option <%=categoryList.get(i).getId() == food.getCategoryId() ? "selected" : ""%>
                                                        value="<%=categoryList.get(i).getId()%>"><%=categoryList.get(i).getName()%>
                                                </option>
                                                <% } %>
                                            </select>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label>Status</label>
                                            <select name="status" class="form-control"
                                                    data-value="<%=food.getStatus()%>">
                                                <%for (int i = 0; i < FoodStatus.values().length; i++) {%>
                                                <option <%=FoodStatus.values()[i] == food.getStatus() ? "selected" : ""%>
                                                        value="<%=FoodStatus.values()[i].getValue()%>"><%=FoodStatus.values()[i].name()%>
                                                </option>
                                                <%}%>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-sm-6">
                                            <label>food name</label>
                                            <input type="text" class="form-control" value="<%=food.getNameFood()%>"
                                                   placeholder="Enter food name"
                                                   name="nameFood">
                                            <%
                                                if (errors.containsKey("name")) {
                                            %>
                                            <p class="valid">* <%=errors.get("name")%>
                                            </p>
                                            <%}%>
                                            <%
                                                if (errors.containsKey("nameFoodLess")) {
                                            %>
                                            <p class="valid">* <%=errors.get("nameFoodLess")%>
                                            </p>
                                            <%}%>
                                        </div>
                                        <div class="col-sm-6 mt-2 mt-sm-0">
                                            <label>Price</label>
                                            <input type="number" class="form-control" value="<%=food.getPrice()%>"
                                                   placeholder="Enter price"
                                                   name="price">
                                            <%
                                                if (errors.containsKey("price")) {
                                            %>
                                            <p class="valid">* <%=errors.get("price")%>
                                            </p>
                                            <%}%>
                                        </div>
                                    </div>
                                    <div class="form-row  mt-2">
                                        <div class="col-sm-6">
                                            <label>Avatar</label>
                                            <div class="mt-2">
                                                <img id="upload_widget" class="img-preview"
                                                     style="width: 100px;height: 100%;object-fit: cover;cursor:pointer"
                                                    <%if (food.getAvatar() == null || Objects.equals(food.getAvatar(), "")) {%>
                                                     src="https://res.cloudinary.com/phamthanghehe/image/upload/v1654539471/opolccjzav6agkexl1uw.jpg"
                                                    <%}else {%>
                                                     src="<%=food.getAvatar()%>"
                                                    <%}%>>
                                                <input type="hidden" name="avatar" id="hidden-thumbnails" value="<%=food.getAvatar()%>">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row mt-2">
                                        <div class="col-sm-12">
                                            <label>Description</label>
                                            <label for="editor"></label>
                                            <textarea id="editor" type="text" class="form-control"
                                                      value="<%=food.getDescription()%>"
                                                      placeholder="Enter detail"
                                                      name="description"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-row mt-2">
                                        <div class="col-sm-12">
                                            <label>Sales Start Date</label>
                                            <input name="salesStartDate" class="datepicker-default form-control"
                                                   id="datepicker">
                                        </div>
                                    </div>
                                    <div class="form-group mt-2 row">
                                        <div class="col-sm-10">
                                            <button type="submit" class="btn btn-primary">Submit</button>
                                        </div>
                                    </div>
                                </form>
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
<script src="https://cdn.ckeditor.com/ckeditor5/34.1.0/classic/ckeditor.js"></script>
<script>
    ClassicEditor
        .create(document.querySelector('#editor'))
        .then(editor => {
            window.parent.editor = editor;
        })
        .catch(error => {
            console.error('There was a problem initializing the editor.', error);
        });
</script>

<script src="https://upload-widget.cloudinary.com/global/all.js" type="text/javascript"></script>

<script type="text/javascript">
    var myWidget = cloudinary.createUploadWidget({
            cloudName: 'phamthanghehe',
            uploadPreset: 'hrn13yyl'
        }, (error, result) => {
            if (!error && result && result.event === "success") {
                $('#upload_widget').attr('src', result.info.secure_url);
                $('#hidden-thumbnails').val(result.info.secure_url);
            }
        }
    )

    document.getElementById("upload_widget").addEventListener("click", function () {
        myWidget.open();
    }, false);
</script>
<jsp:include page="/admin/includes/script.jsp"/>

</body>

</html>
