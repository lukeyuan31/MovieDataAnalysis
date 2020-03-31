<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MovieList</title>
</head>
<body>
<h3>
    Result
</h3>
<%=request.getAttribute("MovieList")%> <br>
<!--%=request.getAttribute("MovieRating").toString()%> <br-->
<br>

<a href="http://localhost:8080/">
    <button>Back</button>
</a>
</body>
</html>