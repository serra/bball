function scatterPlayerScoring() { 
    var margin = { top: 20, right: 20, bottom: 30, left: 40 },
        width = 450,
        height = 200;

    var x = d3.scale.linear()
        .range([0, width]);

    var y = d3.scale.linear()
        .range([height, 0]);

    var color = d3.scale.linear()
                  .domain([0, .8, 1.6])
                  .range(["red", "white", "green"]);              

    var xAxis = d3.svg.axis()
        .scale(x)
        .orient("bottom");

    var yAxis = d3.svg.axis()
        .scale(y)
        .orient("left");

    d3.csv("/stats/heren_2012-2013_regseas_advanced_player_stats_google.csv", function (error, data) {
        data.forEach(function (d) {
            d.spl_TSpct = Math.min(+d.spl_TSpct, 1.0);
            d.spl_USGpct = Math.min(+d.spl_USGpct, 0.6);
            d.spl_PPP = +d.spl_PPP || 0.0;
            d.spl_MinutesRatio = +d.spl_MinutesRatio;
            d.win = (+d.pts > +d.opp_pts) ? 1 : 0;
            d.Summary = d.spl_Id + " (" + d.spl_PPP.toFixed(2) + "), " + d.pts + " - " + d.opp_pts + " vs " + d.opp_plg_Name;
        });

        x.domain(d3.extent(data, function (d) { return d.spl_USGpct; })).nice();
        y.domain(d3.extent(data, function (d) { return d.spl_TSpct; })).nice();

        var competitionAverage = d3.median(data, function(d) { return d.spl_TSpct});
        
        var playerByTeamAgg = d3.nest()
                        .key(function(d) { return d.plg_Name; })
                        .key(function(d) { return d.spl_ID; })
                        .rollup(function(d) {
                                  return {
                                    spl_USGpct:d3.median(d,function(g) {return g.spl_USGpct;}),
                                    spl_TSpct:d3.median(d,function(g) {return g.spl_TSpct;}),
                                    spl_PPP:d3.median(d,function(g) {return g.spl_PPP;}),
                                    spl_MinutesRatio:d3.median(d,function(g) {return g.spl_MinutesRatio;}),
                                    spl_Games: d.length,
                                    WinPct:d3.mean(d,function(g) {return g.win;}),
                                  };
                                })
                        .entries(data);
                        
        var gamesByPlayer = d3.nest()
                            .key(function(d) { return d.spl_ID; })
                            .map(data);

        for(team in d3.keys(playerByTeamAgg))
        {
            var playerAgg = playerByTeamAgg[team].values;

            var svg = d3.select("#playerscoring").append("svg")
                .attr("width", width + margin.left + margin.right)
                .attr("height", height + margin.top + margin.bottom)
              .append("g")
                .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

            svg.append("g")
                .attr("class", "x axis")
                .attr("transform", "translate(0," + height + ")")
                .call(xAxis)
              .append("text")
                .attr("class", "label")
                .attr("x", width)
                .attr("y", -6)
                .style("text-anchor", "end")
                .text("Usage");

            svg.append("g")
                .attr("class", "y axis")
                .call(yAxis)
              .append("text")
                .attr("class", "label")
                .attr("transform", "rotate(-90)")
                .attr("y", 6)
                .attr("dy", ".71em")
                .style("text-anchor", "end")
                .text("True Shooting Pct")

            var compAvg = svg.append("g");
              compAvg.append("line")
                .attr("x1", x(0.0))
                .attr("y1", y(competitionAverage))
                .attr("x2", x(0.6))
                .attr("y2", y(competitionAverage))
               .style("stroke", "#222")
               .style("stroke-dasharray", "3,2")
              compAvg.append("text")
                .attr("class", "label")
                .attr("x", x(competitionAverage)-6)
                .attr("y", 6)
                .attr("dy", ".71em")
                .style("text-anchor", "end")
                .text("Average TSP")
                ;

            var usgAvg = svg.append("g");
              usgAvg.append("line")
                .attr("x1", x(.2))
                .attr("y1", y(0.0))
                .attr("x2", x(.2))
                .attr("y2", y(1.1))
                .style("stroke", "#222")
                .style("stroke-dasharray", "3,2")
              usgAvg.append("text")
                .attr("class", "label")
                .attr("x", x(0.2) + 6)
                .attr("y", 8)
                .attr("dy", ".71em")
                .style("text-anchor", "start")
                .text("Average Usage");

            svg.selectAll(".dot")
                .data(playerAgg)
              .enter().append("circle")
                .attr("class", "dot")
                .attr("r", function (d) { return 2.5 + (d.values.spl_MinutesRatio * 5);})
                .attr("cx", function (d) { return x(d.values.spl_USGpct); })
                .attr("cy", function (d) { return y(d.values.spl_TSpct); })
                .style("fill", function (d) { return color(d.values.spl_PPP); })
                //.on("click", function(d) {showGames(d.key);})
                .append("title").text(function(d,i) {return "" + d.key
                                                               + " | median ppp: " + d.values.spl_PPP.toFixed(2)
                                                               + " | median playing time: " + (d.values.spl_MinutesRatio*40).toFixed(1)
                                                               + " | #gms: " + d.values.spl_Games })
                ;

            var legend = svg.selectAll(".legend")
                .data(color.domain())
              .enter().append("g")
                .attr("class", "legend")
                .attr("transform", function (d, i) { return "translate(0," + i * 20 + ")"; });

            legend.append("rect")
                .attr("x", width - 10)
                .attr("width", 10)
                .attr("height", 10)
                .attr("stroke", "#222")
                .style("fill", color);

            legend.append("text")
                .attr("x", width - 24)
                .attr("y", 2)
                .attr("dy", ".71em")
                .style("text-anchor", "end")
                .text(function (d) { return d; });

            var games = {}; // will contain games to show
            function showGames(playerKey) {

                games[playerKey] = gamesByPlayer[playerKey];

                var toShow = d3.merge(d3.values(games));

                svg.selectAll(".game")
                .data(toShow)
              .enter().append("circle")
                .attr("class", "game")
                .attr("r", 3.5)
                .attr("cx", function (d) { return x(d.spl_USGpct); })
                .attr("cy", function (d) { return y(d.spl_TSpct); })
                .style("fill", function (d) { return color(d.plg_Name); })
                //.on("click", function(d) {showGames(d.key);})
                .append("title").text(function(d,i) {return d.Summary  })
                ;
            }
        }
    });
}