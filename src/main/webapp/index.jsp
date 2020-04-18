<!doctype html>
<html class="no-js" lang="en">

<head>
    <title>Movie Data</title>
    <!-- meta data -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!--font-family-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- title of site -->
    <title>Directory Landing Page</title>

    <!-- For favicon png -->
    <link rel="shortcut icon" type="image/icon" href="WEB-INF/pages/assets/logo/favicon.png"/>

    <!--font-awesome.min.css-->
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">

    <!--linear icon css-->
    <link rel="stylesheet" href="assets/css/linearicons.css">

    <!--animate.css-->
    <link rel="stylesheet" href="assets/css/animate.css">

    <!--flaticon.css-->
    <link rel="stylesheet" href="assets/css/flaticon.css">

    <!--slick.css-->
    <link rel="stylesheet" href="assets/css/slick.css">
    <link rel="stylesheet" href="assets/css/slick-theme.css">

    <!--bootstrap.min.css-->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">

    <!-- bootsnav -->
    <link rel="stylesheet" href="assets/css/bootsnav.css" >

    <!--style.css-->
    <link rel="stylesheet" href="assets/css/style.css">

    <!--responsive.css-->
    <link rel="stylesheet" href="assets/css/responsive.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <script type="text/javascript" src="../../js/echarts (2).js" ></script>
    <script type="text/javascript" src="../../js/jquery-1.8.3.js"></script>
    <![endif]-->

</head>

<body>
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
<![endif]-->

<!--header-top start --><!--/.header-top-->
<!--header-top end -->

<!-- top-area Start -->
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

</section><!-- /.top-area-->
<!-- top-area End -->

<!--welcome-hero start -->
<section id="home" class="welcome-hero">
    <div class="container">
        <div class="welcome-hero-txt">
            <h2>find all you need <br> about movies </h2>
            <p>
                Wonderful Trend data for audiences and movie producers
            </p>
        </div>
        <div class="welcome-hero-serch-box">
            <div class="welcome-hero-form">
                <div class="single-welcome-hero-form">
                    <h3>Actor</h3>
                        <input type="text" id="actor" placeholder="Ex: DiCaprio Leonardo" />
                        <!--input type="text" name="director" placeholder="Ex: Cameron James" /-->
                        <!--input type="submit" value="Search"--><br>
                    <div class="welcome-hero-form-icon">
                        <i class="flaticon-list-with-dots"></i>
                    </div>
                </div>
                <div class="single-welcome-hero-form">
                    <h3>Director</h3>

                        <input type="text" id="director" placeholder="Ex: Cameron James" />

                    <div class="welcome-hero-form-icon">
                        <i class="flaticon-gps-fixed-indicator"></i>
                    </div>
                </div>
            </div>
            <div class="welcome-hero-serch">
                <button class="welcome-hero-btn" onclick="getData()">
                    search  <i data-feather="search"></i>
                </button>
            </div>
        </div>
    </div>

</section><!--/.welcome-hero-->
<!--welcome-hero end -->

<!--list-topics start -->
<section id="list-topics" class="list-topics">
    <div class="container">
        <div class="list-topics-content">
            <ul>
                <li>
                    <div class="single-list-topics-content">
                        <div class="single-list-topics-icon">
                            <i class="flaticon-restaurant"></i>
                        </div>
                        <h2><a href="#">Actors</a></h2>
                        <!--p>150 listings</p-->
                    </div>
                </li>
                <li>
                    <div class="single-list-topics-content">
                        <div class="single-list-topics-icon">
                            <i class="flaticon-travel"></i>
                        </div>
                        <h2><a href="#">Directors</a></h2>
                        <!--p>214 listings</p-->
                    </div>
                </li>
                <li>
                    <div class="single-list-topics-content">
                        <div class="single-list-topics-icon">
                            <i class="flaticon-building"></i>
                        </div>
                        <h2><a href="#">Movies</a></h2>
                        <!--p>185 listings</p-->
                    </div>
                </li>
                <li>
                    <div class="single-list-topics-content">
                        <div class="single-list-topics-icon">
                            <i class="flaticon-pills"></i>
                        </div>
                        <h2><a href="#">Ratings</a></h2>
                        <!--p>200 listings</p-->
                    </div>
                </li>
                <li>
                    <div class="single-list-topics-content">
                        <div class="single-list-topics-icon">
                            <i class="flaticon-transport"></i>
                        </div>
                        <h2><a href="#">Genres</a></h2>
                        <!--p>120 listings</p-->
                    </div>
                </li>
            </ul>
        </div>
    </div><!--/.container-->

</section><!--/.list-topics-->
<!--list-topics end-->

<!--works start -->
<section id="works" class="works">
    <div class="container">
        <div class="section-header">
            <h2>Trends</h2>
            <p>Take a deeper look at the data</p>
        </div><!--/.section-header-->
        <div class="works-content">
            <div class="row">
                <div class="col-md-4 col-sm-6">
                    <div class="single-how-works">
                        <div class="single-how-works-icon">
                            <i class="flaticon-lightbulb-idea"></i>
                        </div>
                        <h2><a href="#">Personal <span> </span> Ratings</a></h2>
                        <p>
                            A trend that shows the average ratings of the select actor's movies each year
                        </p>
                        <form method="post" action="/movies/findPersonalRatings">
                            <input type="submit" class="welcome-hero-btn how-work-btn" value="Enter">
                        </form>

                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="single-how-works">
                        <div class="single-how-works-icon">
                            <i class="flaticon-networking"></i>
                        </div>
                        <h2><a href="#">Rating <span> and</span> Quality</a></h2>
                        <p>
                            A trend that shows both the average ratings of the select actor's movie and the average quality of the directors.
                        </p>
                        <form method="post" action="/movies/findRatingnQuality">
                            <input type="submit" class="welcome-hero-btn how-work-btn" value="Enter">
                        </form>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="single-how-works">
                        <div class="single-how-works-icon">
                            <i class="flaticon-location-on-road"></i>
                        </div>
                        <h2><a href="#">Find <span> Genre</span> Number</a></h2>
                        <p>
                            A trend that shows the type of movies with the highest average rating of the year.
                        </p>
                        <form method="post" action="/movies/findGenreNum">
                            <input class="welcome-hero-btn how-work-btn" type="submit" value="Enter">
                        </form>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="single-how-works">
                        <div class="single-how-works-icon">
                            <i class="flaticon-list-with-dots"></i>
                        </div>
                        <h2><a href="#">Male/<span>Female</span> Ratio</a></h2>
                        <p>
                            A trend that shows you the ratio of male and female in movie industry
                        </p>
                        <form method="post" action="/movies/findGenderRatio">
                            <input class="welcome-hero-btn how-work-btn" type="submit" value="Enter">

                        </form>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="single-how-works">
                        <div class="single-how-works-icon">
                            <i class="flaticon-gps-fixed-indicator"></i>
                        </div>
                        <h2><a href="#">Good<span>Actors</span> Ratio</a></h2>
                        <p>
                            A trend that shows you the ratio of good actors in a movie each year
                        </p>
                        <form method="post" action="/movies/findGoodActorRatio">
                            <input class="welcome-hero-btn how-work-btn" type="submit" value="Enter">

                        </form>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="single-how-works">
                        <div class="single-how-works-icon">
                            <i class="flaticon-restaurant"></i>
                        </div>
                        <h2><a href="#">Quality Difference</a></h2>
                        <p>
                            A trend that shows you the difference between rating of actors and the movie itself
                        </p>
                        <form method="post" action="/movies/findQualityDifference">
                            <input class="welcome-hero-btn how-work-btn" type="submit" value="Enter">

                        </form>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="single-how-works">
                        <div class="single-how-works-icon">
                            <i class="flaticon-search"></i>
                        </div>
                        <h2><a href="#">Below Average Rate</a></h2>
                        <p>
                            A trend that shows you the percentage of movies that are below average rating of the year
                        </p>
                        <form method="post" action="/movies/findBelowAvgPercentage">
                            <input class="welcome-hero-btn how-work-btn" type="submit" value="Enter">

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/.container-->

</section><!--/.works-->
<!--works end -->
<div class="tlinks">Collect from <a href="http://www.cssmoban.com/" >自助建站</a></div>

<!--explore start -->
<!--/.explore-->
<!--explore end -->

<!--reviews start -->

<!--reviews end -->

<!-- statistics strat -->
<section id="statistics"  class="statistics">
    <div class="container">
        <div class="statistics-counter">
            <div class="col-md-3 col-sm-6">
                <div class="single-ststistics-box">
                    <div class="statistics-content">
                        <div class="counter">250 </div> <span>K+</span>
                    </div><!--/.statistics-content-->
                    <h3>ratings</h3>
                </div><!--/.single-ststistics-box-->
            </div><!--/.col-->
            <div class="col-md-3 col-sm-6">
                <div class="single-ststistics-box">
                    <div class="statistics-content">
                        <div class="counter">4</div> <span>k+</span>
                    </div><!--/.statistics-content-->
                    <h3>movies</h3>
                </div><!--/.single-ststistics-box-->
            </div><!--/.col-->
            <div class="col-md-3 col-sm-6">
                <div class="single-ststistics-box">
                    <div class="statistics-content">
                        <div class="counter">10</div> <span>k+</span>
                    </div><!--/.statistics-content-->
                    <h3>actors&Directors</h3>
                </div><!--/.single-ststistics-box-->
            </div><!--/.col-->
            <div class="col-md-3 col-sm-6">
                <div class="single-ststistics-box">
                    <div class="statistics-content">
                        <div class="counter">10</div> <span>k+</span>
                    </div><!--/.statistics-content-->
                    <h3>Users</h3>
                </div><!--/.single-ststistics-box-->
            </div><!--/.col-->
        </div><!--/.statistics-counter-->
    </div><!--/.container-->

</section><!--/.counter-->
<!-- statistics end -->

<!--blog start -->
<!--/.blog-->
<!--blog end -->

<!--subscription strat -->
<section id="contact"  class="subscription">
    <div class="container">
        <div class="subscribe-title text-center">
            <h2>
                do you want to add your business listing with us?
            </h2>
            <p>
                Listrace offer you to list your business with us and we very much able to promote your Business.
            </p>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="subscription-input-group">
                    <form action="#">
                        <input type="email" class="subscription-input-form" placeholder="Enter your email here">
                        <button class="appsLand-btn subscribe-btn" onclick="window.location.href='#'">
                            creat account
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>

</section><!--/subscription-->
<!--subscription end -->

<!--footer start-->
<footer id="footer"  class="footer">
    <div class="container">
        <div class="footer-menu">
            <div class="row">
                <div class="col-sm-3">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="index.html">DB<span>MS</span></a>
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

    <div id="scroll-Top">
        <div class="return-to-top">
            <i class="fa fa-angle-up " id="scroll-top" data-toggle="tooltip" data-placement="top" title="" data-original-title="Back to Top" aria-hidden="true"></i>
        </div>

    </div><!--/.scroll-Top-->

</footer><!--/.footer-->
<!--footer end-->

<!-- Include all js compiled plugins (below), or include individual files as needed -->

<script src="../../assets/js/jquery.js"></script>

<!--modernizr.min.js-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>

<!--bootstrap.min.js-->
<script src="../../assets/js/bootstrap.min.js"></script>

<!-- bootsnav js -->
<script src="../../assets/js/bootsnav.js"></script>

<!--feather.min.js-->
<script  src="../../assets/js/feather.min.js"></script>

<!-- counter js -->
<script src="../../assets/js/jquery.counterup.min.js"></script>
<script src="../../assets/js/waypoints.min.js"></script>

<!--slick.min.js-->
<script src="../../assets/js/slick.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>

<!--Custom JS-->
<script src="../../assets/js/custom.js"></script>

<script type="text/javascript">
    var resultTitle=[];
    function getData() {
        var actorNameadr=document.getElementById("actor");
        var actorName=actorNameadr.value;
        var directorNameadr=document.getElementById("director");
        var directorName=directorNameadr.value;
        //alert(actorName+directorName);

        $.ajax(
            {
                type: 'post',
                async: true,
                url: "/movies/findMoviesAjax",
                data:{actorName: actorName, directorName:directorName},
                dataType: "json",
                success: function (result) {
                    resultTitle=[];
                    for(var i=0;i<result.length;i++){
                        resultTitle.push(result[i].Title);
                    }
                    alert(resultTitle);

                },
                error: function (errorMsg) {
                    alert("Failed to get data");
                }


        })

    }
</script>

</body>

</html>