<%--
  Created by IntelliJ IDEA.
  User: cemh_
  Date: 12/5/2019
  Time: 1:19 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Encuesta</title>
</head>
<body>
<H1>Encuesta</H1>
<g:form controller="encuesta" action="guardar" >
    <label>¿Las charlas donde usted participó cumplieron con sus expectativas?</label>
    <g:select name="pregunta1" from="${['1', '2', '3', '4', '5']}"/><br/>
    <label>¿Los expositores mostraron tener dominio del tema?</label>
    <g:select name="pregunta2" from="${['1', '2', '3', '4', '5']}"/><br/>
    <label>¿Las instalaciones del evento fueron confortables para usted?</label>
    <g:select name="pregunta3" from="${['1', '2', '3', '4', '5']}"/><br/>
    <label> ¿Tiene algún comentario para los organizadores?</label>
    <g:textField name="comentario"/><br/>
    <g:actionSubmit value="Guardar"/>
</g:form>
</body>
</html>
</body>
</html>