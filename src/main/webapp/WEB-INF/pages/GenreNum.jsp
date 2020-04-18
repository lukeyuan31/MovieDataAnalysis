<%--
  Created by IntelliJ IDEA.
  User: lukeyuan
  Date: 2020/4/12
  Time: 12:23 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Genre</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!--font-family-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- title of site -->
    <title>Directory Landing Page</title>

    <!-- For favicon png -->
    <link rel="shortcut icon" type="image/icon" href="assets/logo/favicon.png"/>

    <!--font-awesome.min.css-->
    <link rel="stylesheet" href="../../assets/css/font-awesome.min.css">

    <!--linear icon css-->
    <link rel="stylesheet" href="../../assets/css/linearicons.css">

    <!--animate.css-->
    <link rel="stylesheet" href="../../assets/css/animate.css">

    <!--flaticon.css-->
    <link rel="stylesheet" href="../../assets/css/flaticon.css">

    <!--slick.css-->
    <link rel="stylesheet" href="../../assets/css/slick.css">
    <link rel="stylesheet" href="../../assets/css/slick-theme.css">

    <!--bootstrap.min.css-->
    <link rel="stylesheet" href="../../assets/css/bootstrap.min.css">

    <!-- bootsnav -->
    <link rel="stylesheet" href="../../assets/css/bootsnav.css" >

    <!--style.css-->
    <link rel="stylesheet" href="../../assets/css/style.css">

    <!--responsive.css-->
    <link rel="stylesheet" href="../../assets/css/responsive.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <script type="text/javascript" src="../../js/echarts (2).js" ></script>
    <script type="text/javascript" src="../../js/jquery-1.8.3.js"></script>
</head>

<script type="text/javascript" src="../../js/echarts.js" ></script>
<script type="text/javascript" src="../../js/jquery-1.8.3.js"></script>
<body>
<section class="top-area">
    <div class="header-area">
        <!-- Start Navigation -->
        <nav class="navbar navbar-default bootsnav  navbar-sticky navbar-scrollspy"  data-minus-value-desktop="70" data-minus-value-mobile="55" data-speed="1000">

            <div class="container">

                <!-- Start Header Navigation -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
                        <i class="fa fa-bars"></i>
                    </button>
                    <a class="navbar-brand" href="index.html">DB<span>MS</span></a>

                </div><!--/.navbar-header-->
                <!-- End Header Navigation -->

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse menu-ui-design" id="navbar-menu">
                    <ul class="nav navbar-nav navbar-right" data-in="fadeInDown" data-out="fadeOutUp">
                        <li class=" scroll active"><a href="#home">home</a></li>
                        <li class="scroll"><a href="#works">how it works</a></li>
                        <!--li class="scroll"><a href="#explore">explore</a></li>
                        <li class="scroll"><a href="#reviews">review</a></li>
                        <li class="scroll"><a href="#blog">blog</a></li-->
                        <li class="scroll"><a href="#contact">contact</a></li>
                    </ul><!--/.nav -->
                </div><!-- /.navbar-collapse -->
            </div><!--/.container-->
        </nav><!--/nav-->
        <!-- End Navigation -->
    </div><!--/.header-area-->
    <div class="clearfix"></div>

</section>

<section class="welcome-hero">
<div id="main" style="width: 800px;height:600px; margin: auto;background: snow"></div>
    <br>
    <br>
    <a href="http://localhost:8080/">
        <button class="welcome-hero-btn">Back</button>
    </a>
</section>

<footer id="footer"  class="footer">
    <div class="container">
        <div class="footer-menu">
            <div class="row">
                <div class="col-sm-3">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="localhost:8080 ">DB<span>MS</span></a>
                    </div><!--/.navbar-header-->
                </div>
                <div class="col-sm-9">
                    <ul class="footer-menu-item">
                        <li class="scroll"><a href="#contact">contact</a></li>
                    </ul><!--/.nav -->
                </div>
            </div>
        </div>
        <div class="hm-footer-copyright">
            <div class="row">
                <div class="col-sm-5">
                    <p>
                        &copy;copyright. designed by themesine. Developed by group 03.
                    </p><!--/p-->
                </div>
                <div class="col-sm-7">
                    <div class="footer-social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                        <a href="#"><i class="fa fa-google-plus"></i></a>
                    </div>
                </div>
            </div>

        </div><!--/.hm-footer-copyright-->
    </div><!--/.container-->


</footer>
<script type="text/javascript">
    var myChart=echarts.init(document.getElementById('main'));

    var Chartdata=[];
    var year=[];
    var num=[];
    var genre=[];

    $.ajax({
        type:"post",
        async: true,
        url: "/movies/findGenreNumAjax",
        data:{},
        dataType: "json",
        success:function (result) {
            console.log(result);
            for (var i=0;i<result.length;i++){
                Chartdata.push([result[i].year,result[i].genre,result[i].number]);
                year.push(result[i].year);
                num.push(result[i].number);
                genre.push(result[i].genre);
            }

            //console.log(Chartdata);
            console.log(genre);
            var schema=[
                {name: 'year', index:0,text: 'Year'},
                {name: 'genre', index:1, text:'Type of Movie'},
                {name: 'num', index:2, text: 'Number of Movies'}
            ];

            var option = {
                color: ['#3398DB'],
                tooltip: {

                    trigger: 'axis',
                    axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                        type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                    },
                    formatter: '{a0}: {c0}'+'<br>'+
                               '{a1}: {c1}'
                    /*
                    formatter: function(params) {
                        console.log(params);
                        console.log(params[24].genre);
                    }

                     */
                },
                grid: {
                    left: '3%',
                    right: '4%',
                    bottom: '3%',
                    containLabel: true
                },
                xAxis: [
                    {
                        type: 'category',
                        data: year,
                        axisTick: {
                            alignWithLabel: true
                        }
                    }
                ],
                yAxis: [
                    {
                        type: 'value'
                    }
                ],

                series: [
                    {
                        name: 'Number',
                        type: 'bar',
                        barWidth: '60%',
                        data: num
                    },
                    {
                        name: 'Type',
                        type: 'line',
                        symbolSize: 0, // symbol的大小设置为0
                        showSymbol: false, // 不显示symbol
                        lineStyle: {
                            width: 0, // 线宽是0
                            color: 'rgba(0, 0, 0, 0)' // 线的颜色是透明的
                        },
                        data: genre
                    }
                ]
            };

            myChart.setOption(option);


        },
        error: function (errorMsg) {
            alert("Failed to get data");
        }
    })
</script>


</body>
</html>
