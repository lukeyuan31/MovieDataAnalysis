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
</head>
<script type="text/javascript" src="../../js/echarts.js" ></script>
<script type="text/javascript" src="../../js/jquery-1.8.3.js"></script>
<body>
<div id="main" style="width: 800px;height:600px;"></div>
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
