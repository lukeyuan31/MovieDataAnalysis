<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home page</title>
    <link rel="stylesheet" type="text/css" href="css/index.css">
</head>
<style>
    div.text{
        width: 80%;
        margin:30px;
        position: center;
    }


</style>
<body>
<div class="input_box1">
<h2 align="center">Hello World!</h2>
<!--a href="/users/findUsers">
    Test
</a>
<form method="post" action=/users/findContinents>
    <input type="submit" value="Test">
</form-->

<form method="post" action="/movies/findMovies">
    Name of the actor:<input type="text" name="actor"><br>
    Name of the director:<input type="text" name="director"><br>
    <input type="submit" value="Search"><br>
</form>

</div>
<h3 align="center">Find the ratings of the movies by actors or directors</h3>
<div class="input_box1">
<form method="post" action="/movies/findRatings">
    Name of the actor:<input type="text" name="actor"><br>
    Select Range of Age:<!--input type="text" name="yearRange2"><br-->
    <select name="yearRange2">
        <option value="20" selected>0-20</option>
        <option value="40">21-40</option>
        <option value="60">41-60</option>
    </select> <br>
    Number of movies you want:
    <select name="rownum">
        <option value="6" selected>5</option>
        <option value="11">10</option>
        <option value="16">15</option>
        <option value="21">20</option>
    </select> <br>
    <input type="submit" value="Search"><br>
</form>
    <h3 align="center">Find the movies' average rating of each year</h3>
    <form method="post" action="/movies/findPersonalRatings">
        Name of the actor:<input type="text" name="actor"><br>
        <input type="submit" value="search">
    </form>

    <!--form method="post" action="/movies/findPersonalRatingsAjax">
        <input type="text" name="name">
        <input type="submit" value="search">
    </form-->
</div>
</body>
</html>
