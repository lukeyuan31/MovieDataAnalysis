<%--
  Created by IntelliJ IDEA.
  User: lukeyuan
  Date: 2020/4/11
  Time: 5:24 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Gender Ratio</title>
</head>
<script type="text/javascript" src="../../js/echarts.js" ></script>
<script type="text/javascript" src="../../js/jquery-1.8.3.js"></script>
<body>

<div id="main" style="width: 800px;height:600px;"></div>
<div align="center">
    <button onclick="getData()">Search</button>
</div>

<script type="text/javascript">
    var myChart=echarts.init(document.getElementById('main'));
    //var Chartdata=[];

        var year=[];
        var ratio=[];

        $.ajax(
            {
                type:"post",
                async: true,
                url: "/movies/findGenderRatioAjax",
                data: {},
                dataType: "json",
                success:function (result) {
                    console.log(result);
                    for(var i=0;i<result.length;i++){
                        year.push(result[i].year);
                        ratio.push(result[i].GenderRatio);
                    }

                    console.log(year);
                    console.log(ratio);

                    option = {
                        tooltip: {
                            trigger: 'axis',
                            position: function (pt) {
                                return [pt[0], '10%'];
                            }
                        },
                        title: {
                            left: 'center',
                            text: 'Gender Ratio',
                        },
                        toolbox: {
                            feature: {
                                dataZoom: {
                                    yAxisIndex: 'none'
                                },
                                restore: {},
                                saveAsImage: {}
                            }
                        },
                        xAxis: {
                            type: 'category',
                            boundaryGap: false,
                            data: year
                        },
                        yAxis: {
                            type: 'value',
                            boundaryGap: [0, '100%']
                        },
                        dataZoom: [{
                            type: 'inside',
                            start: 0,
                            end: 10
                        }, {
                            start: 0,
                            end: 10,
                            handleIcon: 'M10.7,11.9v-1.3H9.3v1.3c-4.9,0.3-8.8,4.4-8.8,9.4c0,5,3.9,9.1,8.8,9.4v1.3h1.3v-1.3c4.9-0.3,8.8-4.4,8.8-9.4C19.5,16.3,15.6,12.2,10.7,11.9z M13.3,24.4H6.7V23h6.6V24.4z M13.3,19.6H6.7v-1.4h6.6V19.6z',
                            handleSize: '80%',
                            handleStyle: {
                                color: '#fff',
                                shadowBlur: 3,
                                shadowColor: 'rgba(0, 0, 0, 0.6)',
                                shadowOffsetX: 2,
                                shadowOffsetY: 2
                            }
                        }],
                        series: [
                            {
                                name: 'Female/Male',
                                type: 'line',
                                smooth: true,
                                symbol: 'none',
                                sampling: 'average',
                                itemStyle: {
                                    color: 'rgb(255, 70, 131)'
                                },
                                areaStyle: {
                                    color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                                        offset: 0,
                                        color: 'rgb(255, 158, 68)'
                                    }, {
                                        offset: 1,
                                        color: 'rgb(255, 70, 131)'
                                    }])
                                },
                                data: ratio
                            }
                        ]
                    };
                    myChart.setOption(option);

                },
                error:function (errorMsg) {
                    alert("Failed to get data");
                }

            }
        )






</script>

</body>
</html>
