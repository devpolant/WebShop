<%--
  Created by IntelliJ IDEA.
  User: Antony
  Date: 12.03.2016
  Time: 11:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
    <style>
        form {
            width: 400px;
            margin: auto; /* Выравнивание формы по центру окна  */
        }
    </style>
</head>
<body>

<form action="${pageContext.servletContext.contextPath}/user/registration" method="POST">
    <fieldset style="background-color: darkseagreen">
        <legend>
            Регистрация
        </legend>

        <p>Обязательные поля обозначены *зведочкой : </p>

        <div style="margin: 0px auto; text-align: center">
            <label for="login">*Логин : </label><br />
            <input type="text" id="login" name="login" value="" placeholder="login"/><br /><br />
            <label for="login">Email : </label><br />
            <input type="text" id="email" name="email" value="" placeholder="your.email@mail.com"/><br /><br />
            <label for="passwordFirst">*Введите пароль : </label><br />
            <input type="password" id="passwordFirst" name="password" value="" placeholder="password"/><br /><br />
            <label for="passwordSecond">*Подтвердите пароль: </label><br />
            <input type="password" id="passwordSecond" name="password" value="" placeholder="password"/><br /><br />

            <input type="submit" value="Зарегистрироваться" />
            <input type="reset" value="Сбросить" />
        </div>


    </fieldset>

</form>
</body>
</html>
