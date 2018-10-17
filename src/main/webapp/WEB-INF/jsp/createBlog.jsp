<%--
  Created by IntelliJ IDEA.
  User: andyg
  Date: 2018/10/3
  Time: 16:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%--import jQuery--%>
    <script
            src="https://code.jquery.com/jquery-3.3.1.js"
            integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
            crossorigin="anonymous"></script>
    <script
            src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"
            integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30="
            crossorigin="anonymous"></script>
    <%--import bootstrap--%>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
            integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
            crossorigin="anonymous"></script>
    <script src="../../js/vendor/holder.min.js"></script>
    <%--customer css--%>
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900" rel="stylesheet">
    <link href="../../css/blog.css" rel="stylesheet">
    <title>HomePage</title>
</head>
<body>
<div class="container">
    <jsp:include page="shared/navbar.jsp"/>
    <div class="form-group">
        <h4 class="mb-3 justify-content-center">New Blog</h4>
        <form class="was-validated form-group" action="/Blog/AddBlog" method="post">
            <div class="row form-group">
                <label class="col-sm-2">Title</label>
                <input type="text" class="form-control col-sm-10" name="title" placeholder="Title" required>
                <div class="invalid-feedback" style="width: 100%;">
                    Your title is required.
                </div>
            </div>
            <div class="row form-group">
                <label class="col-sm-2">Text</label>
                <textarea class="form-control col-sm-10" name="text" rows="10"
                          placeholder="Main content."
                          required></textarea>
                <div class="invalid-feedback">
                    Please enter your blog here.
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-6 mb-3"></div>
                <div class="col-md-3 mb-3"></div>
                <div class="col-md-3 mb-3">
                    <input type="submit" class="form-control btn-success" id="submitBtn" value="Submit">
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-6 mb-3"></div>
                <div class="col-md-3 mb-3"></div>
                <div class="col-md-3 mb-3">
                    <select id="type" name="type">
                    </select>
                </div>
            </div>
        </form>
    </div>
</div>
<hr>
<jsp:include page="shared/footer.jsp"/>
<script type="text/javascript">
    $(function () {
        $("select").empty();
        $.get("/Blog/GetBlogType", function (data, status){
            var obj = eval(data); ;
            for(x in obj){
                $("select").append("<option value='"+obj[x]+"'>"+obj[x]+"</option>");
            }
        })
    })
</script>
</body>
</html>