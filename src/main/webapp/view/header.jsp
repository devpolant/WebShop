<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Авторизация</title>
</head>
<body>


<div id="authorization_form" style="float:right;">

    <form action="${pageContext.servletContext.contextPath}/user/login" method="POST">
        <fieldset style="background-color: goldenrod">
            <legend>
                Авторизация
            </legend>

            <c:if test="${not empty login}">
                <p>Здравствуйте, ${login}</p>
            </c:if>
            <c:if test="${empty login}">
                <%--Сохраняю текущий URL, чтобы после авторзации вернуться к нему--%>
                <input type="hidden" name="lastURL"
                       value="${requestScope['javax.servlet.forward.request_uri']}?${pageContext.request.queryString}" />

                <label for="login">Логин: </label><br />
                <input type="text" id="login" name="login" value="" /><br />
                <label for="password">Пароль: </label><br />
                <input type="password" id="password" name="password" value="" /><br /><br />

                <input type="submit" value="Войти" />
                <input type="reset" value="Сбросить" />
            </c:if>

        </fieldset>

    </form>

</div>

</body>
</html>
