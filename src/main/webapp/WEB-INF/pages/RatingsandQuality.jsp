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
</head>
<script type="text/javascript" src="../../js/echarts (2).js" ></script>
<script type="text/javascript" src="../../js/jquery-1.8.3.js"></script>
<body>

<div align="center">
    <label for="name">Name</label><input id="name" type="text">
    <button onclick="getData()">Search</button>
</div>
<div id="main" style="width: 800px;height:600px;"></div>

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
