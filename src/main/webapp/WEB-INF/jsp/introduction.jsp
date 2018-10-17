<%--
  Created by IntelliJ IDEA.
  User: andyg
  Date: 2018/10/3
  Time: 21:14
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
    <title>Introduction Page</title>
</head>
<body>
<div class="container">
    <jsp:include page="shared/navbar.jsp"/>
    <main role="main">
        <div class="jumbotron">
            <div class="container">
                <h2>Summary</h2>
                <p>I am a 2nd-year master student in Information Systems,looking for co-op or full-time opportunities
                    in spring 2019. I have experience of web development by using different stacks like SpringMVC,
                    ASP.Net, Angular,
                    JavaWeb and Bootstrap. Personally, I think I am a gifted and focused person who enjoys
                    learning new knowledge. Enthused to resolve challenges in a different method and tends to be a doer
                    instead of a speaker, considering time keeping and results are important principles. Interested in
                    web application or back-end developing positions.</p>

                <a class="btn btn-primary btn-lg col-md-2" href="/Introduction/GetResume" role="button">Resume</a>
                <a href="https://www.linkedin.com/in/hanwen-guo-71b805149/" target="_blank">
                    <img src="../../img/linkedin.jpg" height="50px" width="180px">
                </a>
            </div>
        </div>
    </main>
    <hr>
    <jsp:include page="shared/messageForm.jsp"/>
    <jsp:include page="shared/footer.jsp"/>
</div>
</body>
</html>
