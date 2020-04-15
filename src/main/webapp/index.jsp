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

    /* 在顶部导航栏中添加黑色背景颜色 */
    .topnav {
        overflow: hidden;
        background-color: #e9e9e9;
    }

    /* 设置导航栏的链接样式 */
    .topnav a {
        float: left;
        display: block;
        color: black;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
        font-size: 17px;
    }

    /* 在悬停时更改链接的颜色 */
    .topnav a:hover {
        background-color: #ddd;
        color: black;
    }

    /* 突出显示当前选中的元素 */
    .topnav a.active {
        background-color: #2196F3;
        color: white;
    }

    /* 设置导航栏的搜索框样式 */
    .topnav input[type=text] {
        float: right;
        padding: 6px;
        border: none;
        margin-top: 8px;
        margin-right: 16px;
        font-size: 17px;
    }

    /* 当屏幕宽度小于 600px 时，垂直堆叠显示菜单选项和搜索框 */
    @media screen and (max-width: 600px) {
        .topnav a, .topnav input[type=text] {
            float: none;
            display: block;
            text-align: left;
            width: 100%;
            margin: 0;
            padding: 14px;
        }
        .topnav input[type=text] {
            border: 1px solid #ccc;
        }
    }



</style>
<body>
<div class="top">
    <div class="topnav">
        <a class="active" href="#home">主页</a>
        <a href="#about">关于</a>
        <a href="#contact">联系我们</a>
        <input type="text" placeholder="搜索..">
    </div>
</div>
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
        <input type="submit" value="Enter">
    </form>

    <h3 align="center">Find the actor's average rating of each year</h3>
    <form method="post" action="/movies/findRatingnQuality">
        <input type="submit" value="Enter">
    </form>
    <!--form method="post" action="/movies/findPersonalRatingsAjax">
        <input type="text" name="name">
        <input type="submit" value="search">
    </form-->
    <form method="post" action="/movies/findGenderRatio">
        <input type="submit" value="Enter">
    </form>

    <form method="post" action="/movies/findGenreNum">
        <input type="submit" value="Enter">
    </form>

    <form method="post" action="/movies/test">
        <input type="submit" value="Enter">
    </form>
</div>
</body>
</html>
