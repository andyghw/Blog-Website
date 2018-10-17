<%--
  Created by IntelliJ IDEA.
  User: andyg
  Date: 2018/10/4
  Time: 13:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>Create Message</title>
    <style type="text/css">
        .jumbotron {
            font-size: 20px;
            word-break: break-all;
        }
    </style>
</head>
<body>
<div class="container">
    <jsp:include page="shared/navbar.jsp"/>
    <c:forEach items="${messages}" var="message">
    <div class="jumbotron">
        <div class="row">
            <p><b>Title: </b><c:out value="${message.getTitle()}"/></p>
        </div>
        <div class="row">
            <p><b>From: </b><c:out value="${message.getAuthor()}"/></p>
        </div>
        <div class="row">
            <p><b>Message: </b><br><c:out value="${message.getText()}"/></p>
        </div>
    </div>
    </c:forEach>
    <hr>
    <jsp:include page="shared/messageForm.jsp"/>
    <jsp:include page="shared/footer.jsp"/>
</body>
</html>
