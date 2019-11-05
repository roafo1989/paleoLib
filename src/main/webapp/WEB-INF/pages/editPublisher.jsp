<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: roafo
  Date: 31.10.2019
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<c:if test="${empty publisher.name}">
<title>Добавление издательства</title>
</c:if>
<c:if test="${!empty publisher.name}">
<title>Изменение издательства</title>
</c:if>
    <link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>
    <link rel="icon" type="image/png/jpg/jpeg" href="<c:url value="/res/13.png"/>"/>
</head>
<body>
<p colspan="7" class="left-side link right-side">
    <a style="margin-right: 200px; color: #e7f6ff; font-size: 15px" href="<c:url value="/"/>">
        <span class="icon icon-prev"></span>Вернуться на главную
    </a>
</p>
<p colspan="7" class="left-side link right-side">
    <a style="margin-right: 200px; color: #e7f6ff; font-size: 15px" href="<c:url value="/publishers"/>">
        <span class="icon icon-prev"></span>Назад
    </a>
</p>
<c:url value="/addPublisher" var="addPublisherURL"/>
<c:url value="/editPublisher" var="editPublisherURL"/>
<form class="style" action="${empty publisher.name ? addPublisherURL : editPublisherURL}" name="publisher" method="POST">
    <c:choose>
    <c:when test="${!empty publisher.name}">
    <p class="heading">Изменить издательство</p>
    <input type="hidden" name="id" value="${publisher.id}">
    </c:when>
    <c:otherwise>
    <p class="heading">Добавить издательство</p>
    </c:otherwise>
    </c:choose>
    <p><input type="text" name="name" placeholder="Издательство" value="${publisher.name}" required autofocus>
    <p><input type="submit" value="Подтвердить">

</body>
</html>
