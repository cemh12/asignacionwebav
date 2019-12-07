<%--
  Created by IntelliJ IDEA.
  User: cemh_
  Date: 12/5/2019
  Time: 1:34 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <!--Load the AJAX API-->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        // Load the Visualization API and the corechart package.
        google.charts.load('current', {'packages':['corechart']});

        // Set a callback to run when the Google Visualization API is loaded.
        google.charts.setOnLoadCallback(drawChartPregunta1);

        // Callback that creates and populates a data table,
        // instantiates the pie chart, passes in the data and
        // draws it.
        function drawChartPregunta1() {
            // Create the data table.
            var data = new google.visualization.DataTable();
            data.addColumn('string', '¿Las charlas donde usted participó cumplieron con sus expectativas?');
            data.addColumn('number', 'Porcentaje');
            data.addRows([
                ['1', ${pregunta11}],
                ['2', ${pregunta12}],
                ['3', ${pregunta13}],
                ['4', ${pregunta14}],
                ['5', ${pregunta15}],
            ]);
            // Set chart options
            var options = {'title':'¿Las charlas donde usted participó cumplieron con sus expectativas?',
                'width':1600,
                'height':800};

            // Instantiate and draw our chart, passing in some options.
            var chart = new google.visualization.PieChart(document.getElementById('chart_pregunta1'));
            chart.draw(data, options);
        }
    </script>
    <script type="text/javascript">
        // Load the Visualization API and the corechart package.
        google.charts.load('current', {'packages':['corechart']});

        // Set a callback to run when the Google Visualization API is loaded.
        google.charts.setOnLoadCallback(drawChartPregunta1);

        // Callback that creates and populates a data table,
        // instantiates the pie chart, passes in the data and
        // draws it.
        function drawChartPregunta1() {
            // Create the data table.
            var data = new google.visualization.DataTable();
            data.addColumn('string', '¿Los expositores mostraron tener dominio del tema?');
            data.addColumn('number', '');
            data.addRows([
                ['1', ${pregunta21}],
                ['2', ${pregunta22}],
                ['3', ${pregunta23}],
                ['4', ${pregunta24}],
                ['5', ${pregunta25}],
            ]);
            // Set chart options
            var options = {'title':'¿Los expositores mostraron tener dominio del tema?',
                'width':1600,
                'height':800};

            // Instantiate and draw our chart, passing in some options.
            var chart = new google.visualization.PieChart(document.getElementById('chart_pregunta2'));
            chart.draw(data, options);
        }
    </script>
    <script type="text/javascript">
        // Load the Visualization API and the corechart package.
        google.charts.load('current', {'packages':['corechart']});

        // Set a callback to run when the Google Visualization API is loaded.
        google.charts.setOnLoadCallback(drawChartPregunta1);

        // Callback that creates and populates a data table,
        // instantiates the pie chart, passes in the data and
        // draws it.
        function drawChartPregunta1() {
            // Create the data table.
            var data = new google.visualization.DataTable();
            data.addColumn('string', '¿Las instalaciones del evento fueron confortables para usted?');
            data.addColumn('number', '');
            data.addRows([
                ['1', ${pregunta31}],
                ['2', ${pregunta32}],
                ['3', ${pregunta33}],
                ['4', ${pregunta34}],
                ['5', ${pregunta35}],
            ]);
            // Set chart options
            var options = {'title':'¿Las instalaciones del evento fueron confortables para usted?',
                'width':1600,
                'height':800};

            // Instantiate and draw our chart, passing in some options.
            var chart = new google.visualization.PieChart(document.getElementById('chart_pregunta3'));
            chart.draw(data, options);
        }
    </script>

    <title>Graficos</title>
</head>

<body>
<!--Div that will hold the pie chart-->
<div id="chart_pregunta1"></div>
<div id="chart_pregunta2"></div>
<div id="chart_pregunta3"></div>
</body>
</html>