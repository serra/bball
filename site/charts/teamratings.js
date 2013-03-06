function scatterTeamRatings() { 
    var margin = { top: 20, right: 20, bottom: 30, left: 40 },
        width = 500,
        height = 500;

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

    var svg = d3.select("#team-indicators-2012-13").append("svg")
        .attr("width", width + margin.left + margin.right)
        .attr("height", height + margin.top + margin.bottom)
      .append("g")
        .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

    d3.csv("/stats/heren_2012-2013_regseas_advanced_team_stats_google.csv", function (error, data) {
        data.forEach(function (d) {
            d.Drtg = +d.Drtg;
            d.Ortg = +d.Ortg;
        });

        x.domain(d3.extent(data, function (d) { return d.Ortg; })).nice();
        y.domain(d3.extent(data, function (d) { return d.Drtg; })).nice();

        var byTeam = d3.nest()
                        .key(function(d) { return d.plg_Name; })
                        .rollup(function(d) {
                                  return {
                                    Ortg:d3.median(d,function(g) {return +g.Ortg;}),
                                    Drtg:d3.median(d,function(g) {return +g.Drtg})
                                  };
                                })
                        .entries(data);
        
        svg.append("g")
            .attr("class", "x axis")
            .attr("transform", "translate(0," + height + ")")
            .call(xAxis)
          .append("text")
            .attr("class", "label")
            .attr("x", width)
            .attr("y", -6)
            .style("text-anchor", "end")
            .text("Offensive rating (points per 100 possessions)");

        svg.append("g")
            .attr("class", "y axis")
            .call(yAxis)
          .append("text")
            .attr("class", "label")
            .attr("transform", "rotate(-90)")
            .attr("y", 6)
            .attr("dy", ".71em")
            .style("text-anchor", "end")
            .text("Defensive rating (points conceeded per 100 possessions)")

        var myLine = svg.append("line")
            .attr("x1", x(50))
            .attr("y1", y(50))
            .attr("x2", x(150))
            .attr("y2", y(150))
            .style("stroke", "#000")
            .style("stroke-dasharray", "9,5");

        svg.selectAll(".dot")
            .data(byTeam)
          .enter().append("circle")
            .attr("class", "dot")
            .attr("r", 3.5)
            .attr("cx", function (d) { return x(d.values.Ortg); })
            .attr("cy", function (d) { return y(d.values.Drtg); })
            .style("fill", function (d) { return color(d.key); });

        var legend = svg.selectAll(".legend")
            .data(color.domain())
          .enter().append("g")
            .attr("class", "legend")
            .attr("transform", function (d, i) { return "translate(0," + i * 20 + ")"; });

        legend.append("rect")
            .attr("x", width - 18)
            .attr("width", 18)
            .attr("height", 18)
            .style("fill", color);

        legend.append("text")
            .attr("x", width - 24)
            .attr("y", 9)
            .attr("dy", ".35em")
            .style("text-anchor", "end")
            .text(function (d) { return d; });

    });
}