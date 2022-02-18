<%-- 
    Document   : Form
    Created on : 25-Jan-2022, 2:37:51 PM
    Author     : khushpreetkaurgulati
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Bank Transaction Request Form</title>
  </head>
  <body>
    <h1><p align="center"><font size="6" color="#800000">Bank Transaction Request Form</h1>
<hr><br>
<table bgcolor="#FFFFCC" align="center"> 
<form action="Client.jsp" method="POST">
<tr><td>Enter the Amount:
<input type="text" name="amount" size="10"></tr></td>
<br> 
<tr><td></tr></td>
<tr><td><b>Select your choice:</b></tr></td>
<tr><td><input type="radio" name="group1" value ="deposit">Deposit</tr></td>
<tr><td><input type="radio" name="group1" value ="withdraw">Withdraw<br></tr></td>


<tr><td>
<input type="submit" value="Transmit" name ="submit">
<input type="reset" value="Reset" name ="reset">

<tr><td></tr></td>

</form>
</table>
  </body>
</html>
