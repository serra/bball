function scatterTeamRatings(season) { 
    season = season || "2012-2013";
    
    var margin = { top: 20, right: 20, bottom: 30, left: 40 },
        width = 450,
        height = 450;

    var x = d3.scale.linear()
        .range([0, width]);

    var y = d3.scale.linear()
        .range([height, 0]);

    var color = d3.scale.category10();

    var xAxis = d3.svg.axis()
        .scale(x)
        .orient("bottom");

    var yAxis = d3.svg.axis()
        .scale(y)
        .orient("left");

    var svg = d3.select("#teamratings").append("svg")
        .attr("width", width + margin.left + margin.right)
        .attr("height", height + margin.top + margin.bottom)
      .append("g")
        .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

    d3.csv("/stats/heren_" + season + "_regseas_advanced_team_stats_google.csv", function (error, data) {
        data.forEach(function (d) {
            d.Drtg = +d.Drtg;   // all inpunt are strings, so we have to coerce to numeric using +
            d.Ortg = +d.Ortg;
            d.Nrtg = +d.Nrtg;
            d.win = (+d.pts > +d.opp_pts) ? 1 : 0;
            d.Summary = d.plg_Name + " " + d.pts + " - " + d.opp_pts + " " + d.opp_plg_Name;
        });

        x.domain(d3.extent(data, function (d) { return d.Ortg; })).nice();
        y.domain(d3.extent(data, function (d) { return d.Drtg; })).nice();

        var competitionAverage = d3.median(data, function(d) { return d.Ortg});
        
        var teamAgg = d3.nest()
                        .key(function(d) { return d.plg_Name; })
                        .rollup(function(d) {
                                  return {
                                    Ortg:d3.median(d,function(g) {return g.Ortg;}),
                                    Drtg:d3.median(d,function(g) {return g.Drtg;}),
                                    Nrtg:d3.median(d,function(g) {return g.Nrtg;}),
                                    WinPct:d3.mean(d,function(g) {return g.win;}),
                                  };
                                })
                        .entries(data);
                        
        var gamesByTeam = d3.nest()
                            .key(function(d) { return d.plg_Name; })
                            .map(data);
        
        svg.append("g")
            .attr("class", "x axis")
            .attr("transform", "translate(0," + height + ")")
            .call(xAxis)
          .append("text")
            .attr("class", "label")
            .attr("x", width)
            .attr("y", -6)
            .style("text-anchor", "end")
            .text("Offensive rating");

        svg.append("g")
            .attr("class", "y axis")
            .call(yAxis)
          .append("text")
            .attr("class", "label")
            .attr("transform", "rotate(-90)")
            .attr("y", 6)
            .attr("dy", ".71em")
            .style("text-anchor", "end")
            .text("Defensive rating")

            
        var rng = [50,150];    
            
        var winLooseLine = svg.append("line")
            .attr("x1", x(rng[0]))
            .attr("y1", y(rng[0]))
            .attr("x2", x(rng[1]-20))
            .attr("y2", y(rng[1]-20))
            .style("stroke", "#000")
            .style("stroke-dasharray", "6,2");

        var compAvg = svg.append("g");
          compAvg.append("line")
            .attr("x1", x(rng[0]))
            .attr("y1", y(competitionAverage))
            .attr("x2", x(rng[1]))
            .attr("y2", y(competitionAverage))
            .style("stroke", "#000")
            .style("stroke-dasharray", "3,2")
          compAvg.append("text")
            .attr("class", "label")
            .attr("x", x(competitionAverage)-6)
            .attr("y", 6)
            .attr("dy", ".71em")
            .style("text-anchor", "end")
            .text("Average Offense")            
            ;

        var compAvg = svg.append("g");
          compAvg.append("line")
            .attr("x1", x(competitionAverage))
            .attr("y1", y(rng[0]))
            .attr("x2", x(competitionAverage))
            .attr("y2", y(rng[1]))
            .style("stroke", "#000")
            .style("stroke-dasharray", "3,2")
          compAvg.append("text")
            .attr("class", "label")
            .attr("x", x(rng[1]))
            .attr("y", y(competitionAverage)+8)
            .attr("dy", ".71em")
            .style("text-anchor", "end")
            .text("Average Defense");

        svg.selectAll(".dot")
            .data(teamAgg)
          .enter().append("circle")
            .attr("class", "dot")
            .attr("r", function (d) { return 2.5 + d.values.WinPct * 5;})
            .attr("cx", function (d) { return x(d.values.Ortg); })
            .attr("cy", function (d) { return y(d.values.Drtg); })
            .style("fill", function (d) { return color(d.key); })
            .on("click", function(d) {showGames(d.key);})
            .append("title").text(function(d,i) {return "" + d.key + " (win pct: " + d.values.WinPct.toFixed(2) + ", Nrtg: " + d.values.Nrtg.toFixed(1) + ")" })
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
            .style("fill", color);

        legend.append("text")
            .attr("x", width - 24)
            .attr("y", 2)
            .attr("dy", ".71em")
            .style("text-anchor", "end")
            .text(function (d) { return d; });
        
        var games = {}; // will contain games to show
        function showGames(teamKey) {
            
            games[teamKey] = gamesByTeam[teamKey];
            
            var toShow = d3.merge(d3.values(games));
                      
            svg.selectAll(".game")
            .data(toShow)
          .enter().append("circle")
            .attr("class", "game")
            .attr("r", 3.5)
            .attr("cx", function (d) { return x(d.Ortg); })
            .attr("cy", function (d) { return y(d.Drtg); })
            .style("fill", function (d) { return color(d.plg_Name); })
            //.on("click", function(d) {showGames(d.key);})
            .append("title").text(function(d,i) {return d.Summary  })
            ;
        }
        
    });
}