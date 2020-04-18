<%--
  Created by IntelliJ IDEA.
  User: lukeyuan
  Date: 2020/4/9
  Time: 5:02 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ratings and Quality</title>

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
<script type="text/javascript" src="../../js/echarts (2).js" ></script>
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
                    <a class="navbar-brand" href="index.html">list<span>race</span></a>

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
<div id="main" style="width: 800px;height:600px; margin: auto; background: snow"></div>
    <div align="center">
        <label for="name">Name</label><input id="name" type="text">
        <button onclick="getData()" class="welcome-hero-btn">Search</button>
        <br>
        <br>
        <a href="http://localhost:8080/">
            <button class="welcome-hero-btn">Back</button>
        </a>
    </div>
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



    function getData() {
        var varname=document.getElementById("name");
        var name=varname.value;

        $.ajax(
            {
                type: "post",
                async: true,
                url: "/movies/findRatingnQualityAjax",
                data: {name: name},
                dataType: "json",
                success: function (result) {
                    Chartdata=[];
                    //console.log(result);
                    for (var i = 0;i<result.length;i++){
                        Chartdata.push([result[i].year,result[i].avgRating,result[i].numOfFilm,result[i].avgDirQuality]);
                    }

                    console.log(Chartdata);


                    var schema =[
                        {name: 'year', index: 0, text: 'Year'},
                        {name: 'avgRating', index:1, text: 'Average Rating'},
                        {name: 'numOfFilm', index:2, text: 'Number of Film'},
                        {name: 'avgDirQuality', index:3, text: 'Average Director\'s Quality'}
                    ];

                    var itemStyle = {
                        opacity: 0.8,
                        shadowBlur: 10,
                        shadowOffsetX: 0,
                        shadowOffsetY: 0,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    };

                    var option = {
                        backgroundColor: '#404a59',
                        color: [
                            '#dd4444', '#fec42c', '#80F1BE'
                        ],
                        legend: {
                            top: 10,
                            data: ['Test'],
                            textStyle: {
                                color: '#fff',
                                fontSize: 16
                            }
                        },
                        grid: {
                            left: '10%',
                            right: 150,
                            top: '18%',
                            bottom: '10%'
                        },


                        tooltip: {
                            padding: 10,
                            backgroundColor: '#222',
                            borderColor: '#777',
                            borderWidth: 1,
                            formatter: function (obj) {
                                var value = obj.value;
                                return '<div style="border-bottom: 1px solid rgba(255,255,255,.3); font-size: 18px;padding-bottom: 7px;margin-bottom: 7px">'
                                    /*
                                    + obj.seriesName + ' ' + value[0] + '日：'
                                    + value[7]
                                    + '</div>'
                                    + schema[1].text + '：' + value[1] + '<br>'
                                    + schema[2].text + '：' + value[2] + '<br>'
                                    + schema[3].text + '：' + value[3] + '<br>'

                                     */
                                    + schema[0].text + '：' + value[0] + '<br>'
                                    + schema[1].text + '：' + value[1] + '<br>'
                                    + schema[2].text + '：' + value[2] + '<br>'
                                    + schema[3].text + '：' + value[3] + '<br>'
                            }
                        },

                        xAxis: {
                            type: 'value',
                            name: 'Year',
                            nameGap: 16,
                            nameTextStyle: {
                                color: '#fff',
                                fontSize: 14
                            },
                            min: 1960,
                            max: 2000,
                            splitLine: {
                                show: false
                            },
                            axisLine: {
                                lineStyle: {
                                    color: '#eee'
                                }
                            }
                        },
                        yAxis: {
                            type: 'value',
                            name: 'Rating',
                            nameLocation: 'end',
                            nameGap: 20,
                            nameTextStyle: {
                                color: '#fff',
                                fontSize: 16
                            },
                            axisLine: {
                                lineStyle: {
                                    color: '#eee'
                                }
                            },
                            splitLine: {
                                show: false
                            }
                        },

                        visualMap: [
                            {
                                left: 'right',
                                top: '10%',
                                dimension: 2,
                                min: 0,
                                max: 10,
                                itemWidth: 30,
                                itemHeight: 120,
                                calculable: true,
                                precision: 0.1,
                                text: ['NumOfFilm'],
                                textGap: 30,
                                textStyle: {
                                    color: '#fff'
                                },
                                inRange: {
                                    symbolSize: [10, 70]
                                },
                                outOfRange: {
                                    symbolSize: [10, 70],
                                    color: ['rgba(255,255,255,.2)']
                                },
                                controller: {
                                    inRange: {
                                        color: ['#c23531']
                                    },
                                    outOfRange: {
                                        color: ['#444']
                                    }
                                }
                            },
                            {
                                left: 'right',
                                bottom: '5%',
                                dimension: 3,
                                min: 0,
                                max: 5,
                                itemHeight: 120,

                                precision: 0.1,
                                text: ['Brightness: Quality'],
                                textGap: 30,
                                textStyle: {
                                    color: '#fff'
                                },
                                inRange: {
                                    colorLightness: [1, 0.5]
                                },
                                outOfRange: {
                                    color: ['rgba(255,255,255,.2)']
                                },
                                controller: {
                                    inRange: {
                                        color: ['#c23531']
                                    },
                                    outOfRange: {
                                        color: ['#444']
                                    }
                                }
                            }
                        ],

                        series: [
                            {
                                name: 'Name',
                                type: 'scatter',
                                itemStyle: itemStyle,
                                data: Chartdata
                            }
                        ]
                    };
                    //console.log(result);
                    //alert(data);
                    //myChart.hideLoading();
                    myChart.setOption(option);


                    //alert("Success");
                },
                error: function (errorMsg) {
                    alert("Failed to get data");
                }

            }
        )

    }

</script>

<a href="http://localhost:8080/">
    <button>Back</button>
</a>
</body>
</html>
