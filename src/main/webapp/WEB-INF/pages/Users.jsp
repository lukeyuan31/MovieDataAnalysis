<%--
  Created by IntelliJ IDEA.
  User: lukeyuan
  Date: 2020/3/22
  Time: 10:50 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>
    Result
</h3>
<%=request.getAttribute("Continent")%>

<a href="/movies/findMovies">
    <button>Back</button>
</a>
</body>
</html>
