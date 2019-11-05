<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: roafo
  Date: 29.10.2019
  Time: 17:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Палеобиблиотека</title>
    <link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>
    <link rel="icon" type="image/png/jpg/jpeg" href="<c:url value="/res/15.png"/>"/>
</head>
<body>
<p colspan="7" class="left-side link right-side">
    <a style="margin-right: 200px; tab-size: 30px; color: #e7f6ff; font-size: 100%" href="<c:url value="/"/>">
        <span class="icon icon-prev"></span>Вернуться на главную</a>
</p>
<p colspan="7" class="left-side link right-side">
    <a style="margin-right: 70px; color: #e7f6ff; font-size: 100%" href="<c:url value="/addBook"/>">
        <span class="icon icon-add"></span>Добавить книгу</a>
    <a style="margin-right: 70px; color: #e7f6ff; font-size: 100%" href="/authors">
        <span class="iconAuthor"></span>Список авторов</a>
    <a style="margin-right: 70px; color: #e7f6ff; font-size: 100%" href="/publishers">
        <span class="iconPub"></span>Список издательств</a>
</p>

<table class="style">
    <tr>
        <th class="left-side">№</th>
        <th style="width: 80%">Название</th>
        <th style="width: 100%">Автор</th>
        <th>Год</th>
        <th>Издательство</th>
        <th style="width: 100%">Кол-во стр.</th>

        <th colspan="2" class="right-side">Изменить</th>
    </tr>
    <c:forEach var="book" items="${bookList}" varStatus="i">
        <tr>
            <td>${i.index + 1}</td>
            <td class="title">${book.title}</td>
            <td>${book.author}</td>
            <td>${book.year}</td>
            <td>${book.publisher}</td>
            <td>${book.qtyOfPages}</td>

            <td>
                <a href="/edit/${book.id}">
                    <span class="icon icon-edit"></span>
                </a>
            </td>
            <td class="right-side">
                <a href="/delete/${book.id}">
                    <span class="icon icon-delete"></span>
                </a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
