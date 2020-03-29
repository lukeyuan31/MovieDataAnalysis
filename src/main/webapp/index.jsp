<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home page</title>
</head>
<body>
<h2>Hello World!</h2>
<a href="/users/findUsers">
    Test
</a>
<form method="post" action=/users/findContinents>
    <input type="submit" value="Test">
</form>

<form method="post" action="/movies/findMovies">
    Name of the actor:<input type="text" name="actor"><br>
    <input type="submit" value="Search"><br>
</form>
</body>
</html>
