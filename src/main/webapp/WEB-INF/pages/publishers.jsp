<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: roafo
  Date: 31.10.2019
  Time: 14:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Издательства</title>
    <link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>
    <link rel="icon" type="image/png/jpg/jpeg" href="<c:url value="/res/13.png"/>"/>
</head>
<body>
<p colspan="7" class="left-side link right-side">
    <a style="margin-right: 200px; color: #e7f6ff; font-size: 100%" href="<c:url value="/"/>">
        <span class="icon icon-prev"></span>Вернуться на главную
    </a>
</p>
<p colspan="7" class="left-side link right-side">
    <a style="margin-right: 200px; color: #e7f6ff; font-size: 100%" href="<c:url value="/addPublisher"/>">
        <span class="icon icon-add"></span>Добавить издательство</a>
    <a style="margin-right: 70px; color: #e7f6ff; font-size: 100%" href="/books">
        <span class="iconBook"></span>Список книг</a>
    <a style="margin-right: 70px; color: #e7f6ff; font-size: 100%" href="/authors">
        <span class="iconPub"></span>Список авторов</a>
</p>
<table class="style">
    <tr>
        <th class="left-side">№</th>
        <th style="width: 100%">Издательство</th>
        <th colspan="2" class="right-side">Изменить</th>
    </tr>
<c:forEach var="publisher" items="${publisherList}" varStatus="i">
    <tr>
        <td>${i.index +1}</td>
        <td class="title">${publisher.name}</td>
        <td>
            <a href="/editPublisher/${publisher.id}">
                <span class="icon icon-edit"></span>
            </a>
        </td>
        <td class="right-side">
            <a href="/deletePublisher/${publisher.id}">
                <span class="icon icon-delete"></span>
            </a>
        </td>
    </tr>
</c:forEach>
</table>
</body>
</html>
