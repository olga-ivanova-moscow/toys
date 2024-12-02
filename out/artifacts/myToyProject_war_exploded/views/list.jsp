<%@ page import="java.util.List" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ru">
<head>
    <title>Список пользователей</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>

<body class="w3-light-grey">
<div class="w3-container w3-blue-grey w3-opacity w3-right-align">
    <h1>Список всех пользователей</h1>
</div>

<div class="w3-container w3-center w3-margin-bottom w3-padding">
    <div class="w3-card-4">
        <div class="w3-container w3-light-blue">
            <h2>Добавлены пользователи:</h2>
        </div>
        <%
            List<String> names = (List<String>) request.getAttribute("userNames");
            if (names != null && !names.isEmpty()) {
                out.println("<ul class=\"w3-ul\">");
                for (String s : names) {
                    out.println("<li class=\"w3-hover-sand\">" + new String(s.getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8) + "</li>");
                }
                out.println("</ul>");
            } else out.println("<div class=\"w3-panel w3-red w3-display-container w3-card-4 w3-round\">\n"
                    +
                    "   <span onclick=\"this.parentElement.style.display='none'\"\n" +
                    "   class=\"w3-button w3-margin-right w3-display-right w3-round-large w3-hover-red w3-border w3-border-red w3-hover-border-grey\">×</span>\n" +
                    "   <h5>Пока нет ни одного пользователя!</h5>\n" +
                    "</div>");
        %>
    </div>
</div>

<div class="w3-container w3-grey w3-opacity w3-right-align w3-padding">
    <button class="w3-btn w3-round-large" onclick="location.href='/myToyProject/'">Back to main</button>
</div>
</body>
</html>








<%--<%@ page import="java.util.List" %>--%>
<%--<%@ page import="jdk.nashorn.internal.ir.debug.JSONWriter" %>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Список пользователей</title>--%>
<%--</head>--%>

<%--<body>--%>
<%--<h3>Список всех пользователей</h3>--%>

<%--<div>--%>
<%--    <h1>Super app!</h1>--%>
<%--</div>--%>

<%--<div>--%>
<%--    <div>--%>
<%--        <div>--%>
<%--            <h2>Users</h2>--%>
<%--        </div>--%>
<%--        <%--%>
<%--            List<String> names = (List<String>) request.getAttribute("userNames");--%>

<%--            if (names != null && !names.isEmpty()) {--%>
<%--                out.println("<ui>");--%>
<%--                for (String s : names) {--%>
<%--                    out.println("<li>" + s + "</li>");--%>
<%--                }--%>
<%--                out.println("</ui>");--%>
<%--            } else out.println("<p>There are no users yet!</p>");--%>
<%--        %>--%>
<%--    </div>--%>
<%--</div>--%>

<%--  <div>--%>
<%--    <button onclick="location.href='/myToyProject_war_exploded/'"> Back to main </button>--%>
<%--  </div>--%>
<%--  </body>--%>
<%--</html>--%>
