<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: roafo
  Date: 31.10.2019
  Time: 13:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Авторы</title>
    <link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>
    <link rel="icon" type="image/png/jpg/jpeg" href="<c:url value="/res/11.png"/>"/>
</head>
<body>
<p colspan="7" class="left-side link right-side">
    <a style="margin-right: 200px; tab-size: 30px; color: #e7f6ff; font-size: 100%" href="<c:url value="/"/>">
        <span class="icon icon-prev"></span>Вернуться на главную</a>
</p>
<p colspan="7" class="left-side link right-side">
    <a style="margin-right: 200px; tab-size: 30px; color: #e7f6ff; font-size: 100%" href="<c:url value="/addAuthor"/>">
        <span class="icon icon-add"></span>Добавить автора</a>
    <a style="margin-right: 70px; color: #e7f6ff; font-size: 100%" href="/books">
        <span class="iconBook"></span>Список книг</a>
    <a style="margin-right: 70px; color: #e7f6ff; font-size: 100%" href="/publishers">
        <span class="iconPub"></span>Список издательств</a>
</p>
<table class="style">
    <tr>
        <th style="width: 10%" class="left-side">№</th>
        <th style="width: 25%">Фамилия</th>
        <th style="width: 20%">Имя</th>
        <th style="width: 20%">Отчество</th>
        <th style="width: 10%" colspan="2" class="right-side">Изменить</th>
    </tr>
    <c:forEach var="author" items="${authorList}" varStatus="i">
        <tr>
            <td>${i.index +1}</td>
            <td class="title">${author.lastname}</td>
            <td class="title">${author.firstname}</td>
            <td class="title">${author.surname}</td>
            <td>
                <a href="/editAuthor/${author.id}">
                    <span class="icon icon-edit"></span>
                </a>
            </td>
            <td class="right-side">
                <a href="/deleteAuthor/${author.id}">
                    <span class="icon icon-delete"></span>
                </a>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
