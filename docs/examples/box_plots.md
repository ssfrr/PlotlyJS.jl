```julia
function box1()
    y0 = rand(50)
    y1 = rand(50) + 1
    trace1 = box(;y=y0)
    trace2 = box(;y=y1)
    data = [trace1, trace2]
    plot(data)
end
box1()
```


<div id="b9aa3500-81fa-404a-b0d9-194b406edb7a" class="plotly-graph-div"></div>

<script>
    window.PLOTLYENV=window.PLOTLYENV || {};
    window.PLOTLYENV.BASE_URL="https://plot.ly";
    Plotly.newPlot('b9aa3500-81fa-404a-b0d9-194b406edb7a', [{"y":[0.7420220125771289,0.2507845891607454,0.6828133425125797,0.555305476646057,0.3859833553062304,0.919713654053322,0.05864228014006567,0.5417177146660368,0.3036260442904961,0.24659231542189586,0.1298497215895016,0.9318671919727544,0.50254738017173,0.43355236473120473,0.5073382319935495,0.7343413398532574,0.3637452573374773,0.8619589834859809,0.5718320108553663,0.5061918715613505,0.639170630209789,0.8299260452417614,0.4960335188363043,0.4308717588639941,0.3953652154142746,0.06277540709219709,0.5917668375874487,0.40949742650328824,0.5023420113618702,0.23274490797103664,0.935274568166222,0.4062296898242064,0.9414446148893434,0.22236263540406997,0.8372577261025458,0.6626607037883423,0.6367871746010498,0.6200091106251793,0.6700201811648352,0.7012975099440439,0.19977328944420059,0.09453739825716556,0.562878983983828,0.6514073175359016,0.05509035462834522,0.47911108788428125,0.2984735873484119,0.27712370162000965,0.5797367131037374,0.10761956151269247],"type":"box"},{"y":[1.6164437162279732,1.6638158082131556,1.997603728450241,1.4039653463010233,1.5800220119945307,1.3379147946239562,1.6329402672406879,1.8816458071822415,1.1354508432366124,1.0393540941336226,1.851383371821786,1.0210174821409002,1.6535537959754398,1.0874275778127231,1.8840618678301166,1.9599188269558248,1.4706422744138037,1.6147604425364706,1.4575434491414634,1.4275067558214212,1.5859233118956737,1.1733259855063054,1.2096320774017082,1.0043834919410273,1.5934357076895709,1.841736072638698,1.0251580004692809,1.408316852352531,1.1195193551424851,1.633314774094598,1.410022360927082,1.8346839591949984,1.0153863660441322,1.443044224896732,1.9666544358428368,1.7614720164247684,1.7421630127147703,1.6174286647477254,1.7931037857112486,1.3964435710955372,1.368721797791103,1.319026344131302,1.0086464012741445,1.0300862723737672,1.665996148581976,1.6648162102139685,1.276026763357519,1.3954543527740595,1.8439043205101688,1.5108349473333043],"type":"box"}],
               {"margin":{"r":0,"l":0,"b":0,"t":0}}, {showLink: false});

 </script>



```julia
function box2()
    data = box(;y=[0, 1, 1, 2, 3, 5, 8, 13, 21],
                boxpoints="all",
                jitter=0.3,
                pointpos=-1.8)
    plot(data)
end
box2()
```


<div id="208bb01c-b3ff-437b-ac5d-2a165404e7c3" class="plotly-graph-div"></div>

<script>
    window.PLOTLYENV=window.PLOTLYENV || {};
    window.PLOTLYENV.BASE_URL="https://plot.ly";
    Plotly.newPlot('208bb01c-b3ff-437b-ac5d-2a165404e7c3', [{"y":[0,1,1,2,3,5,8,13,21],"type":"box","jitter":0.3,"pointpos":-1.8,"boxpoints":"all"}],
               {"margin":{"r":0,"l":0,"b":0,"t":0}}, {showLink: false});

 </script>



```julia
function box3()
    trace1 = box(;x=[1, 2, 3, 4, 4, 4, 8, 9, 10],
                  name="Set 1")
    trace2 = box(;x=[2, 3, 3, 3, 3, 5, 6, 6, 7],
                  name="Set 2")
    data = [trace1, trace2]
    layout = Layout(;title="Horizontal Box Plot")

    plot(data, layout)
end
box3()
```


<div id="3a68fb2c-a71b-4a50-a5cd-488ff55c8de7" class="plotly-graph-div"></div>

<script>
    window.PLOTLYENV=window.PLOTLYENV || {};
    window.PLOTLYENV.BASE_URL="https://plot.ly";
    Plotly.newPlot('3a68fb2c-a71b-4a50-a5cd-488ff55c8de7', [{"name":"Set 1","type":"box","x":[1,2,3,4,4,4,8,9,10]},{"name":"Set 2","type":"box","x":[2,3,3,3,3,5,6,6,7]}],
               {"title":"Horizontal Box Plot","margin":{"r":0,"l":0,"b":0,"t":0}}, {showLink: false});

 </script>



```julia
function box4()
    x0 = ["day 1", "day 1", "day 1", "day 1", "day 1", "day 1",
          "day 2", "day 2", "day 2", "day 2", "day 2", "day 2"]
    trace1 = box(;y=[0.2, 0.2, 0.6, 1.0, 0.5, 0.4, 0.2, 0.7, 0.9, 0.1, 0.5, 0.3],
                  x=x0,
                  name="kale",
                  marker_color="#3D9970")
    trace2 = box(;y=[0.6, 0.7, 0.3, 0.6, 0.0, 0.5, 0.7, 0.9, 0.5, 0.8, 0.7, 0.2],
                  x=x0,
                  name="radishes",
                  marker_color="#FF4136")
    trace3 = box(;y=[0.1, 0.3, 0.1, 0.9, 0.6, 0.6, 0.9, 1.0, 0.3, 0.6, 0.8, 0.5],
                  x=x0,
                  name="carrots",
                  marker_color="#FF851B")
    data = [trace1, trace2, trace3]
    layout = Layout(;yaxis=attr(title="normalized moisture", zeroline=false),
                    boxmode="group")
    plot(data, layout)
end
box4()
```


<div id="5c0e5aee-b71b-4025-a60e-96f8524bdb0e" class="plotly-graph-div"></div>

<script>
    window.PLOTLYENV=window.PLOTLYENV || {};
    window.PLOTLYENV.BASE_URL="https://plot.ly";
    Plotly.newPlot('5c0e5aee-b71b-4025-a60e-96f8524bdb0e', [{"y":[0.2,0.2,0.6,1.0,0.5,0.4,0.2,0.7,0.9,0.1,0.5,0.3],"name":"kale","type":"box","x":["day 1","day 1","day 1","day 1","day 1","day 1","day 2","day 2","day 2","day 2","day 2","day 2"],"marker":{"color":"#3D9970"}},{"y":[0.6,0.7,0.3,0.6,0.0,0.5,0.7,0.9,0.5,0.8,0.7,0.2],"name":"radishes","type":"box","x":["day 1","day 1","day 1","day 1","day 1","day 1","day 2","day 2","day 2","day 2","day 2","day 2"],"marker":{"color":"#FF4136"}},{"y":[0.1,0.3,0.1,0.9,0.6,0.6,0.9,1.0,0.3,0.6,0.8,0.5],"name":"carrots","type":"box","x":["day 1","day 1","day 1","day 1","day 1","day 1","day 2","day 2","day 2","day 2","day 2","day 2"],"marker":{"color":"#FF851B"}}],
               {"yaxis":{"title":"normalized moisture","zeroline":false},"margin":{"r":0,"l":0,"b":0,"t":0},"boxmode":"group"}, {showLink: false});

 </script>



```julia
function box5()
    trace1 = box(;y=[0.75, 5.25, 5.5, 6, 6.2, 6.6, 6.80, 7.0, 7.2, 7.5, 7.5,
                     7.75, 8.15, 8.15, 8.65, 8.93, 9.2, 9.5, 10, 10.25, 11.5,
                     12, 16, 20.90, 22.3, 23.25],
                  name="All Points",
                  jitter=0.3,
                  pointpos=-1.8,
                  marker_color="rgb(7, 40, 89)",
                  boxpoints="all")
    trace2 = box(;y=[0.75, 5.25, 5.5, 6, 6.2, 6.6, 6.80, 7.0, 7.2, 7.5, 7.5,
                     7.75, 8.15, 8.15, 8.65, 8.93, 9.2, 9.5, 10, 10.25, 11.5,
                     12, 16, 20.90, 22.3, 23.25],
                  name="Only Wiskers",
                  marker_color="rgb(9, 56, 125)",
                  boxpoints=false)
    trace3 = box(;y=[0.75, 5.25, 5.5, 6, 6.2, 6.6, 6.80, 7.0, 7.2, 7.5, 7.5,
                     7.75, 8.15, 8.15, 8.65, 8.93, 9.2, 9.5, 10, 10.25, 11.5,
                     12, 16, 20.90, 22.3, 23.25],
                  name="Suspected Outlier",
                  marker=attr(color="rgb(8, 8, 156)",
                              outliercolor="rgba(219, 64, 82, 0.6)",
                              line=attr(outliercolor="rgba(219, 64, 82, 1.0)",
                                        outlierwidth=2)),
                  boxpoints="suspectedoutliers")
    trace4 = box(;y=[0.75, 5.25, 5.5, 6, 6.2, 6.6, 6.80, 7.0, 7.2, 7.5, 7.5,
                     7.75, 8.15, 8.15, 8.65, 8.93, 9.2, 9.5, 10, 10.25, 11.5,
                     12, 16, 20.90, 22.3, 23.25],
                  name="Wiskers and Outliers",
                  marker_color="rgb(107, 174, 214)",
                  boxpoints="Outliers")
    data = [trace1, trace2, trace3, trace4]
    layout = Layout(;title="Box Plot Styling Outliers")
    plot(data, layout)
end
box5()
```


<div id="e52c0779-6006-4449-bb62-0c35f28e31bc" class="plotly-graph-div"></div>

<script>
    window.PLOTLYENV=window.PLOTLYENV || {};
    window.PLOTLYENV.BASE_URL="https://plot.ly";
    Plotly.newPlot('e52c0779-6006-4449-bb62-0c35f28e31bc', [{"y":[0.75,5.25,5.5,6.0,6.2,6.6,6.8,7.0,7.2,7.5,7.5,7.75,8.15,8.15,8.65,8.93,9.2,9.5,10.0,10.25,11.5,12.0,16.0,20.9,22.3,23.25],"name":"All Points","type":"box","jitter":0.3,"pointpos":-1.8,"boxpoints":"all","marker":{"color":"rgb(7, 40, 89)"}},{"y":[0.75,5.25,5.5,6.0,6.2,6.6,6.8,7.0,7.2,7.5,7.5,7.75,8.15,8.15,8.65,8.93,9.2,9.5,10.0,10.25,11.5,12.0,16.0,20.9,22.3,23.25],"name":"Only Wiskers","type":"box","boxpoints":false,"marker":{"color":"rgb(9, 56, 125)"}},{"y":[0.75,5.25,5.5,6.0,6.2,6.6,6.8,7.0,7.2,7.5,7.5,7.75,8.15,8.15,8.65,8.93,9.2,9.5,10.0,10.25,11.5,12.0,16.0,20.9,22.3,23.25],"name":"Suspected Outlier","type":"box","boxpoints":"suspectedoutliers","marker":{"line":{"outliercolor":"rgba(219, 64, 82, 1.0)","outlierwidth":2},"outliercolor":"rgba(219, 64, 82, 0.6)","color":"rgb(8, 8, 156)"}},{"y":[0.75,5.25,5.5,6.0,6.2,6.6,6.8,7.0,7.2,7.5,7.5,7.75,8.15,8.15,8.65,8.93,9.2,9.5,10.0,10.25,11.5,12.0,16.0,20.9,22.3,23.25],"name":"Wiskers and Outliers","type":"box","boxpoints":"Outliers","marker":{"color":"rgb(107, 174, 214)"}}],
               {"title":"Box Plot Styling Outliers","margin":{"r":0,"l":0,"b":0,"t":0}}, {showLink: false});

 </script>



```julia
function box6()
    trace1 = box(;y=[2.37, 2.16, 4.82, 1.73, 1.04, 0.23, 1.32, 2.91, 0.11,
                     4.51, 0.51, 3.75, 1.35, 2.98, 4.50, 0.18, 4.66, 1.30,
                     2.06, 1.19],
                  name="Only Mean",
                  marker_color="rgb(8, 81, 156)",
                  boxmean=true)
    trace2 = box(;y=[2.37, 2.16, 4.82, 1.73, 1.04, 0.23, 1.32, 2.91, 0.11,
                     4.51, 0.51, 3.75, 1.35, 2.98, 4.50, 0.18, 4.66, 1.30,
                     2.06, 1.19],
                  name="Mean and Standard Deviation",
                  marker_color="rgb(10, 140, 208)",
                  boxmean="sd")
    data = [trace1, trace2]
    layout = Layout(;title="Box Plot Styling Mean and Standard Deviation")
    plot(data, layout)
end
box6()
```


<div id="ce1f117f-5d42-44d1-8cbe-b90bf089d1ed" class="plotly-graph-div"></div>

<script>
    window.PLOTLYENV=window.PLOTLYENV || {};
    window.PLOTLYENV.BASE_URL="https://plot.ly";
    Plotly.newPlot('ce1f117f-5d42-44d1-8cbe-b90bf089d1ed', [{"y":[2.37,2.16,4.82,1.73,1.04,0.23,1.32,2.91,0.11,4.51,0.51,3.75,1.35,2.98,4.5,0.18,4.66,1.3,2.06,1.19],"name":"Only Mean","type":"box","marker":{"color":"rgb(8, 81, 156)"},"boxmean":true},{"y":[2.37,2.16,4.82,1.73,1.04,0.23,1.32,2.91,0.11,4.51,0.51,3.75,1.35,2.98,4.5,0.18,4.66,1.3,2.06,1.19],"name":"Mean and Standard Deviation","type":"box","marker":{"color":"rgb(10, 140, 208)"},"boxmean":"sd"}],
               {"title":"Box Plot Styling Mean and Standard Deviation","margin":{"r":0,"l":0,"b":0,"t":0}}, {showLink: false});

 </script>



```julia
function box7()
    y0 = ["day 1", "day 1", "day 1", "day 1", "day 1", "day 1",
          "day 2", "day 2", "day 2", "day 2", "day 2", "day 2"]
    trace1 = box(;x=[0.2, 0.2, 0.6, 1.0, 0.5, 0.4, 0.2, 0.7, 0.9, 0.1, 0.5, 0.3],
                  y=y0,
                  name="kale",
                  marker_color="#3D9970",
                  boxmean=false,
                  orientation="h")
    trace2 = box(;x=[0.6, 0.7, 0.3, 0.6, 0.0, 0.5, 0.7, 0.9, 0.5, 0.8, 0.7, 0.2],
                  y=y0,
                  name="radishes",
                  marker_color="#FF4136",
                  boxmean=false,
                  orientation="h")
    trace3 = box(;x=[0.1, 0.3, 0.1, 0.9, 0.6, 0.6, 0.9, 1.0, 0.3, 0.6, 0.8, 0.5],
                  y=y0,
                  name="carrots",
                  marker_color="#FF851B",
                  boxmean=false,
                  orientation="h")
    data = [trace1, trace2, trace3]
    layout = Layout(;title="Grouped Horizontal Box Plot",
                     xaxis=attr(title="normalized moisture", zeroline=false),
                     boxmode="group")
    plot(data, layout)
end
box7()
```


<div id="d0c21d4d-9aad-49d9-b6dd-08bea6c74eaf" class="plotly-graph-div"></div>

<script>
    window.PLOTLYENV=window.PLOTLYENV || {};
    window.PLOTLYENV.BASE_URL="https://plot.ly";
    Plotly.newPlot('d0c21d4d-9aad-49d9-b6dd-08bea6c74eaf', [{"y":["day 1","day 1","day 1","day 1","day 1","day 1","day 2","day 2","day 2","day 2","day 2","day 2"],"name":"kale","type":"box","orientation":"h","x":[0.2,0.2,0.6,1.0,0.5,0.4,0.2,0.7,0.9,0.1,0.5,0.3],"marker":{"color":"#3D9970"},"boxmean":false},{"y":["day 1","day 1","day 1","day 1","day 1","day 1","day 2","day 2","day 2","day 2","day 2","day 2"],"name":"radishes","type":"box","orientation":"h","x":[0.6,0.7,0.3,0.6,0.0,0.5,0.7,0.9,0.5,0.8,0.7,0.2],"marker":{"color":"#FF4136"},"boxmean":false},{"y":["day 1","day 1","day 1","day 1","day 1","day 1","day 2","day 2","day 2","day 2","day 2","day 2"],"name":"carrots","type":"box","orientation":"h","x":[0.1,0.3,0.1,0.9,0.6,0.6,0.9,1.0,0.3,0.6,0.8,0.5],"marker":{"color":"#FF851B"},"boxmean":false}],
               {"xaxis":{"title":"normalized moisture","zeroline":false},"title":"Grouped Horizontal Box Plot","margin":{"r":0,"l":0,"b":0,"t":0},"boxmode":"group"}, {showLink: false});

 </script>



```julia
function box8()
    trace1 = box(;y=[1, 2, 3, 4, 4, 4, 8, 9, 10],
                  name="Sample A",
                  marker_color="rgb(214, 12, 140)")
    trace2 = box(;y=[2, 3, 3, 3, 3, 5, 6, 6, 7],
                  name="Sample B",
                  marker_color="rgb(0, 128, 128)")
    data = [trace1, trace2]
    layout = Layout(;title="Colored Box Plot")
    plot(data, layout)
end
box8()
```


<div id="b5df07ee-11c0-4b31-9e3b-a781424d8547" class="plotly-graph-div"></div>

<script>
    window.PLOTLYENV=window.PLOTLYENV || {};
    window.PLOTLYENV.BASE_URL="https://plot.ly";
    Plotly.newPlot('b5df07ee-11c0-4b31-9e3b-a781424d8547', [{"y":[1,2,3,4,4,4,8,9,10],"name":"Sample A","type":"box","marker":{"color":"rgb(214, 12, 140)"}},{"y":[2,3,3,3,3,5,6,6,7],"name":"Sample B","type":"box","marker":{"color":"rgb(0, 128, 128)"}}],
               {"title":"Colored Box Plot","margin":{"r":0,"l":0,"b":0,"t":0}}, {showLink: false});

 </script>



```julia
function box9()
    xData = ["Carmelo<br>Anthony", "Dwyane<br>Wade", "Deron<br>Williams",
             "Brook<br>Lopez", "Damian<br>Lillard", "David<br>West",
             "Blake<br>Griffin", "David<br>Lee", "Demar<br>Derozan"]

    _getrandom(num, mul) = mul .* rand(num)

    yData = Array[
            _getrandom(30, 10),
            _getrandom(30, 20),
            _getrandom(30, 25),
            _getrandom(30, 40),
            _getrandom(30, 45),
            _getrandom(30, 30),
            _getrandom(30, 20),
            _getrandom(30, 15),
            _getrandom(30, 43)
        ]
    colors = ["rgba(93, 164, 214, 0.5)", "rgba(255, 144, 14, 0.5)",
              "rgba(44, 160, 101, 0.5)", "rgba(255, 65, 54, 0.5)",
              "rgba(207, 114, 255, 0.5)", "rgba(127, 96, 0, 0.5)",
              "rgba(255, 140, 184, 0.5)", "rgba(79, 90, 117, 0.5)",
              "rgba(222, 223, 0, 0.5)"]

    data = GenericTrace[]
    for i in 1:length(xData)
        trace = box(;y=yData[i],
                     name=xData[i],
                     boxpoints="all",
                     jitter=0.5,
                     whiskerwidth=0.2,
                     fillcolor="cls",
                     marker_size=2,
                     line_width=1)
        push!(data, trace)
    end

    t = "Points Scored by the Top 9 Scoring NBA Players in 2012"
    layout = Layout(;title=t,
                     yaxis=attr(autorange=true, showgrid=true, zeroline=true,
                                dtick=5, gridcolor="rgb(255, 255, 255)",
                                gridwidth=1,
                                zerolinecolor="rgb(255, 255, 255)",
                                zerolinewidth=2),
                     margin=attr(l=40, r=30, b=80, t=100),
                     paper_bgcolor="rgb(243, 243, 243)",
                     plot_bgcolor="rgb(243, 243, 243)",
                     showlegend=false)
    plot(data, layout)
end
box9()
```


<div id="3919de71-40e1-4988-be9b-0e2c7166c35d" class="plotly-graph-div"></div>

<script>
    window.PLOTLYENV=window.PLOTLYENV || {};
    window.PLOTLYENV.BASE_URL="https://plot.ly";
    Plotly.newPlot('3919de71-40e1-4988-be9b-0e2c7166c35d', [{"y":[9.036950321503067,3.1565970523316,4.233265488364739,5.756862407926042,8.338181641259517,0.25455000161622277,8.113167211587669,0.6106716985509686,9.79974831893328,6.162986856138768,9.265979056187534,7.85417155940735,6.849695833668146,2.954982133870623,8.061974573109246,7.358801667562018,7.0844098486464135,8.92557589236938,9.32409882296814,4.918379148236727,9.967738233406006,4.623233832816991,3.5530837938835935,3.5783955431770664,3.1476121441199245,3.2636368303250585,4.791398287381064,9.88154434687764,6.786261766536327,2.19014748585034],"name":"Carmelo<br>Anthony","type":"box","fillcolor":"cls","line":{"width":1},"jitter":0.5,"whiskerwidth":0.2,"boxpoints":"all","marker":{"size":2}},{"y":[17.066901714193477,0.2932571312787635,17.296711438878326,7.176944167683281,5.789311805074857,16.129654486472628,3.8491291763802282,17.636371211771483,8.746929785144637,5.094107137338666,2.429167948518871,3.796194830401838,8.594515766127948,6.825375565070213,9.14674672250888,0.5914182681637659,16.161064100661434,0.5751739297415881,0.6627398888014735,2.865542598254871,10.971016106042999,2.5081940624371324,13.523079432892953,2.0741449008183244,17.42577403899817,0.277922512532478,0.5752096789576999,18.32861641400802,13.814711664213121,11.222073909150744],"name":"Dwyane<br>Wade","type":"box","fillcolor":"cls","line":{"width":1},"jitter":0.5,"whiskerwidth":0.2,"boxpoints":"all","marker":{"size":2}},{"y":[8.505920263586203,22.743559078902376,13.838155156122001,15.893938480923348,16.00906039124733,21.550178725201235,4.544055842849187,7.668673540215071,18.855170802219483,3.400983109401773,1.3400747139281632,13.383907559623559,7.324522529808469,7.575373538989416,23.1907749274189,22.253770089476777,5.994406402643887,11.545021384619625,16.797557269326617,24.343278170245142,10.339347697790863,16.544568231038305,19.68065694000762,13.101150577771136,8.237913633516152,14.8651965021252,5.066569428027856,4.379388823340674,14.849173714125541,14.613054124168062],"name":"Deron<br>Williams","type":"box","fillcolor":"cls","line":{"width":1},"jitter":0.5,"whiskerwidth":0.2,"boxpoints":"all","marker":{"size":2}},{"y":[11.937933452308815,11.35148848019818,38.68011781500719,33.68894281081148,17.353403842643907,31.133105092708682,32.05915633170132,18.213880878933715,22.558715315951893,5.429355462264871,26.783503922178767,25.145037729849875,39.56441563401575,2.008648125228465,8.155125979913516,25.94889017114032,31.945484303515972,19.368024501041738,36.9633956476129,26.51079227598288,3.5454164798426646,10.181979023097103,13.041176741071778,39.01389138143266,26.97734056532365,14.05681470060716,18.259492184190513,10.893403250207214,8.90020357614218,13.495052573161654],"name":"Brook<br>Lopez","type":"box","fillcolor":"cls","line":{"width":1},"jitter":0.5,"whiskerwidth":0.2,"boxpoints":"all","marker":{"size":2}},{"y":[9.02855844710507,38.86258786649108,27.400596596955864,38.721792389316434,19.33123541769884,4.24167870280903,35.58776234232709,27.30390751924974,23.411648668478314,22.661912231695847,26.54882805263593,24.80508844429277,20.58846973013904,5.365472626536913,10.00372705878749,37.39343023707677,27.237449626045343,17.055208991815643,5.22167771227506,38.06454887043652,39.61210853518866,8.09614303385693,22.39526283165827,39.53046485324681,21.548563041753,31.713980016305293,12.772055558272172,35.8284774390346,32.81987713815507,28.016744091644256],"name":"Damian<br>Lillard","type":"box","fillcolor":"cls","line":{"width":1},"jitter":0.5,"whiskerwidth":0.2,"boxpoints":"all","marker":{"size":2}},{"y":[13.266300543697021,8.96120354262923,1.2043505122475007,23.46552744108572,29.210114487218192,20.755277678699972,19.291467979254122,0.5619708607729335,25.8540801615769,14.278937252641457,20.004358843731666,27.449116185148217,2.6420195494499077,17.359869056112032,21.84601482313243,19.29293593327187,24.112018296073625,0.017171540908123006,12.764846629195263,20.103941745989076,20.618032569891245,11.485033851941523,28.881728332110153,3.644048083068172,29.52656842076138,16.763179303849046,5.612471869162405,29.850562452139226,5.295575489293755,7.251733760799328],"name":"David<br>West","type":"box","fillcolor":"cls","line":{"width":1},"jitter":0.5,"whiskerwidth":0.2,"boxpoints":"all","marker":{"size":2}},{"y":[16.17745642554043,15.286903038785908,16.63830109974316,1.7970207421478879,0.31758198346902855,5.2119331591360885,14.222703629181797,10.1346465267578,13.528408930992448,12.054997679177696,13.617269633009435,17.889347068584215,18.876715603919077,9.875701747179622,16.83697536390529,15.064950463460827,6.839808674684842,1.2534801018316655,4.92936183202457,7.0233836658543325,7.326886476188266,17.742148649593418,9.610591963839173,10.363815510618299,17.516865688412704,18.33578930074998,0.11173051829465042,16.45358077664829,9.27442511155682,11.434540363322592],"name":"Blake<br>Griffin","type":"box","fillcolor":"cls","line":{"width":1},"jitter":0.5,"whiskerwidth":0.2,"boxpoints":"all","marker":{"size":2}},{"y":[13.199960875859297,0.5483078929119523,0.6825602777389117,1.0132465766435517,3.6292266224862466,11.075964737439177,8.61338344245591,1.8339838893814353,14.729672497385614,12.755926317297359,14.264201151618053,14.84722939429124,10.795439448397621,5.046126244763007,2.4787891030942975,5.646312305741931,10.471454893362095,4.563082903149386,14.499914377537952,14.17222070987107,3.9145411446845815,4.693427445312814,5.43967723586692,1.573078028089,2.2359341356690443,2.298890025752598,8.729045410133518,11.194855635607052,5.473430593857097,6.116953875100123],"name":"David<br>Lee","type":"box","fillcolor":"cls","line":{"width":1},"jitter":0.5,"whiskerwidth":0.2,"boxpoints":"all","marker":{"size":2}},{"y":[37.774194409582776,17.073489291900028,29.776758607214145,8.173558855797017,9.20719104483597,40.552741711734015,40.35605987722095,20.82088812488312,12.969455015796642,16.29839869575907,9.733693652548062,29.46103074202501,36.51018830669979,34.17286133325655,34.3936761122166,9.922377960222095,1.7950055820919562,12.579752437545915,3.3697824972285426,34.97996689908618,5.903918297731008,40.1511449050516,36.41003861261707,38.157012163234185,24.61017539786895,23.47820237786465,4.459100861523284,42.41138188735393,1.717420141751679,14.533339082554935],"name":"Demar<br>Derozan","type":"box","fillcolor":"cls","line":{"width":1},"jitter":0.5,"whiskerwidth":0.2,"boxpoints":"all","marker":{"size":2}}],
               {"yaxis":{"zerolinecolor":"rgb(255, 255, 255)","autorange":true,"zerolinewidth":2,"showgrid":true,"zeroline":true,"dtick":5,"gridcolor":"rgb(255, 255, 255)","gridwidth":1},"plot_bgcolor":"rgb(243, 243, 243)","showlegend":false,"paper_bgcolor":"rgb(243, 243, 243)","title":"Points Scored by the Top 9 Scoring NBA Players in 2012","margin":{"r":30,"l":40,"b":80,"t":100}}, {showLink: false});

 </script>



```julia
function box10()
    n_box = 30
    colors = ["hsl($i, 50%, 50%)" for i in linspace(0, 360, n_box)]

    gen_y_data(i) =
        3.5*sin(pi*i/n_box) + i/n_box + (1.5+0.5*cos(pi*i/n_box)).*rand(10)

    ys = Array[gen_y_data(i) for i in 1:n_box]

    # Create Traces
    data = GenericTrace[box(y=y, marker_color=mc) for (y, mc) in zip(ys, colors)]

    #Format the layout
    layout = Layout(;xaxis=attr(;showgrid=false, zeroline=false,
                                 tickangle=60, showticklabels=true),
                     yaxis=attr(;zeroline=false, gridcolor="white"),
                     paper_bgcolor="rgb(233, 233, 233)",
                     plot_bgcolor="rgb(233, 233, 233)",
                     showlegend=true)
    plot(data, layout)
end
box10()
```


<div id="bb054b72-ae55-4a82-b06b-32d1079e097f" class="plotly-graph-div"></div>

<script>
    window.PLOTLYENV=window.PLOTLYENV || {};
    window.PLOTLYENV.BASE_URL="https://plot.ly";
    Plotly.newPlot('bb054b72-ae55-4a82-b06b-32d1079e097f', [{"y":[0.6616561825803573,1.5986009139618644,2.24638894200526,2.297904810539671,1.5440050662248284,1.027167444257386,1.338806018699085,0.8266364191283526,1.39674385422338,1.706580857690167],"type":"box","marker":{"color":"hsl(0.0, 50%, 50%)"}},{"y":[1.0600685843468756,1.7801890783627687,2.4100990040641355,2.003838278132987,0.9795438064816135,1.1496006000898293,1.9379020607254633,1.1171981971268232,2.4562948057708223,0.8621648013716947],"type":"box","marker":{"color":"hsl(12.413793103448276, 50%, 50%)"}},{"y":[1.7552183217547614,1.5229927960835128,2.0392780183069656,2.9112394052425197,1.4471110080226597,1.9754126435022605,1.6801239252007487,1.6110858700403528,2.810299009463458,2.7260521443922565],"type":"box","marker":{"color":"hsl(24.82758620689655, 50%, 50%)"}},{"y":[2.067433004932149,3.0183612302827796,2.3992985628869734,2.1641194499292338,2.621727353358062,2.903806170609055,2.7228987385341883,2.0130795654207043,3.0558928115068316,2.0647909101140227],"type":"box","marker":{"color":"hsl(37.241379310344826, 50%, 50%)"}},{"y":[2.0266784649154177,3.2630840211834693,2.6754985994125358,3.6536263024871483,3.6736842044155145,3.7206373419346077,2.3569146135704386,3.2990035183380155,3.6609850869471865,1.9321250807007984],"type":"box","marker":{"color":"hsl(49.6551724137931, 50%, 50%)"}},{"y":[2.684585922546953,3.8718791657472593,3.3135775782963703,3.9004652916211464,3.6216240601428438,2.7437278790286728,3.0965672623690663,3.8494375635252625,2.734477419185879,2.763461059937608],"type":"box","marker":{"color":"hsl(62.06896551724138, 50%, 50%)"}},{"y":[3.0780919345681563,3.5412090221754324,3.8786636209893937,4.289433598114797,2.9620439748571563,3.8337929421467676,2.651797149669871,3.6109826292649023,4.038357554630149,2.6711368813607326],"type":"box","marker":{"color":"hsl(74.48275862068965, 50%, 50%)"}},{"y":[3.5027065196361016,2.9925909813420417,3.304659207799785,3.8668202734870305,4.129923229800514,3.8477160415654597,4.557965384540055,3.1939943254525662,2.8691769921702535,4.5885781640325405],"type":"box","marker":{"color":"hsl(86.89655172413794, 50%, 50%)"}},{"y":[4.791822616131295,3.7111286627503506,4.26305995085724,4.708666018707817,4.341704299344755,3.9368685120476568,4.588505792372793,4.077540498318861,4.684143126375503,4.596067057394469],"type":"box","marker":{"color":"hsl(99.3103448275862, 50%, 50%)"}},{"y":[4.7997082908310365,3.767835882739817,4.6946805090951615,4.898560552142069,3.7692056005954955,4.650206752939685,4.394121118657362,4.586197029384181,4.450099703053571,5.074016975711584],"type":"box","marker":{"color":"hsl(111.72413793103448, 50%, 50%)"}},{"y":[4.27170949401436,4.859806400918304,5.05090048873292,5.088577446926819,4.92519218258478,5.071308546536207,3.8640281102768856,4.961809422045494,4.305618798828322,5.205304188744998],"type":"box","marker":{"color":"hsl(124.13793103448276, 50%, 50%)"}},{"y":[5.006171981546632,4.051305340271057,4.6652103049322164,4.397029225726722,4.222610990827544,3.8705802243140037,5.034852958678048,4.766338639034139,4.234887755641284,4.118377762891879],"type":"box","marker":{"color":"hsl(136.55172413793105, 50%, 50%)"}},{"y":[4.564574693952284,5.014098752555206,5.273741906070725,4.7414345632251775,4.369098311044466,5.271621076105672,4.88194042845309,4.257055720334807,4.302778081418807,4.148129225154554],"type":"box","marker":{"color":"hsl(148.9655172413793, 50%, 50%)"}},{"y":[4.50448393907296,4.370900406709857,4.356834234931091,4.6903802203117015,4.54424505691224,4.536402226229229,5.238075641605166,4.386831534682588,4.253121355846887,4.956185385791036],"type":"box","marker":{"color":"hsl(161.3793103448276, 50%, 50%)"}},{"y":[5.376464703272919,4.2167773141460785,4.319941932344923,5.245762638672664,4.655115957127496,5.362923008626067,4.812210312574694,5.077524888469831,5.088784592878499,5.236771321412976],"type":"box","marker":{"color":"hsl(173.79310344827587, 50%, 50%)"}},{"y":[4.813396198053797,4.451734143042318,5.22480786659937,5.164432347260325,5.2170829733865505,5.093199124466977,5.2678245549973886,4.2469204048494325,4.366069468794676,4.859607023660986],"type":"box","marker":{"color":"hsl(186.20689655172413, 50%, 50%)"}},{"y":[5.069734574662231,4.331462063827937,4.050030372695728,4.582729481585998,4.053992784791495,5.295168210150541,4.582922093939508,4.048408431351054,4.190789912612416,4.551853408471848],"type":"box","marker":{"color":"hsl(198.6206896551724, 50%, 50%)"}},{"y":[4.638664852068934,4.33837546016605,4.749597313473028,4.877836174260711,4.2324704006913585,4.742059968668167,4.974171839454176,3.929869179747848,4.240773497796837,4.456093647980766],"type":"box","marker":{"color":"hsl(211.0344827586207, 50%, 50%)"}},{"y":[3.9869955731006423,4.588745781469506,4.816539019136547,4.5807859888067135,4.163333883036076,4.60588668013046,3.90007911700811,4.3122137695394915,4.169989115727137,5.114710797830437],"type":"box","marker":{"color":"hsl(223.44827586206895, 50%, 50%)"}},{"y":[3.9816813386718195,4.628747346788109,4.215540176563588,4.907646998118094,4.784920340844096,4.922668545803596,3.703899374121757,4.389080690193426,4.033954938547011,4.9415806709562595],"type":"box","marker":{"color":"hsl(235.86206896551724, 50%, 50%)"}},{"y":[4.47621218603343,4.541978667408511,4.40688517051925,3.8659825923664974,3.6972292634772117,4.504643407890991,3.7844959452831892,4.239450349011026,4.5193771337456115,3.6503094562662937],"type":"box","marker":{"color":"hsl(248.27586206896552, 50%, 50%)"}},{"y":[3.614290002818054,3.7442113283691727,3.572276169328327,3.5903167780493104,4.0740809306504016,4.278934993135206,4.1999957848298894,4.0791063144832584,4.461305085250066,4.335574175874603],"type":"box","marker":{"color":"hsl(260.6896551724138, 50%, 50%)"}},{"y":[3.114609008032628,3.8940776560527137,3.9604587290580087,4.146714045051106,3.4229935390436,3.6378251932900407,3.1592742330137447,4.036864397285704,3.6479775380756987,3.612055825213822],"type":"box","marker":{"color":"hsl(273.1034482758621, 50%, 50%)"}},{"y":[3.724155195934179,2.883231258702609,2.9148609819529794,3.7362074073288047,3.1683723110534965,3.2502254808530835,3.024262467958466,3.6057283867044143,3.863958019891575,3.7308248021317083],"type":"box","marker":{"color":"hsl(285.51724137931035, 50%, 50%)"}},{"y":[3.2640565181124,3.590413202937668,2.6258433596352484,3.488209258134863,3.4801211410080812,3.457410489706106,3.4125601307571456,3.517235323002467,2.7072444131396094,3.006410314855969],"type":"box","marker":{"color":"hsl(297.9310344827586, 50%, 50%)"}},{"y":[3.2024171123165286,2.454102770056459,2.6645430234249696,3.12897140307772,3.1147761408680585,2.387856699470964,2.977933868769964,2.9491401269008675,3.1842859519747817,2.8142309636654774],"type":"box","marker":{"color":"hsl(310.3448275862069, 50%, 50%)"}},{"y":[2.766377647492634,2.6994700079231375,2.6893814610404707,2.9827794156735368,2.0374165067645094,2.4471592177589914,2.632223407599678,2.2027199629994465,1.999747859055326,2.1519922069813515],"type":"box","marker":{"color":"hsl(322.7586206896552, 50%, 50%)"}},{"y":[2.4036921292694475,2.547212753007176,1.8849751457307653,2.406648361150161,2.6534336074199727,1.864728240547351,1.935325540732508,2.012883479825527,1.9888462484937939,2.5642498251021744],"type":"box","marker":{"color":"hsl(335.17241379310343, 50%, 50%)"}},{"y":[1.4727853453234334,2.0879843884301503,1.5285761471327257,2.1143162251841403,2.3182119978596165,1.9408898553854321,1.6905454795812094,1.4686227822724172,2.230274222117669,2.163544564466309],"type":"box","marker":{"color":"hsl(347.58620689655174, 50%, 50%)"}},{"y":[1.9558954016147791,1.4887570039870757,1.7220776114197178,1.59388850823867,1.9663832309932665,1.281078548865629,1.560707089079041,1.7592182607920641,1.0748979231229217,1.7305469201240207],"type":"box","marker":{"color":"hsl(360.0, 50%, 50%)"}}],
               {"yaxis":{"zeroline":false,"gridcolor":"white"},"plot_bgcolor":"rgb(233, 233, 233)","showlegend":true,"xaxis":{"showgrid":false,"zeroline":false,"tickangle":60,"showticklabels":true},"paper_bgcolor":"rgb(233, 233, 233)","margin":{"r":30,"l":40,"b":80,"t":100}}, {showLink: false});

 </script>



