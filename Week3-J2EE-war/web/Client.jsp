<%-- 
    Document   : Client
    Created on : 25-Jan-2022, 2:47:57 PM
    Author     : khushpreetkaurgulati
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page language="java"%>

<%@page import="Week3.BankAccountRemote"%>

<%@page import="javax.naming.Context" %>

<%@page import="javax.naming.InitialContext" %>
<%@page import="java.util.*" %>



<%!   
public BankAccountRemote bcr = null; 
float fone = 0;
float resultDeposit = 0;
float resultWithdraw = 0;
public void jspInit()
{
try{
  Context ctx = new InitialContext();
  bcr = (BankAccountRemote)ctx.lookup(BankAccountRemote.class.getName());
  System.out.println("Loaded");
  
}
catch(Exception ex){
  System.out.println("Error:" + ex.getMessage());
}
}
    
%>

<%
  try{ 
  String radio = request.getParameter("group1");
  String amountEntered = request.getParameter("amount");
  fone = Float.parseFloat(amountEntered);
 
  
if(radio!= null)
{
    
    if(radio.equals("deposit"))
    {
        
    resultDeposit = bcr.deposit(fone);
      out.println("The Transaction is Complete<br/>");
      
      out.println("Your  Current Balance is: " + resultDeposit);
        
    }
    
    else if(radio.equals("withdraw"))
    {
         resultWithdraw = bcr.withdraw(fone);
         out.println("The Transaction is Complete<br/>");
         
          out.println("Your  Current Balance is: " + resultWithdraw);
        
    }
}
    else
    {
        out.println("Please select a style");
}

  

   
%>

<%
    }
catch(Exception ex)
{
  System.out.println("Error:" + ex.getMessage());
}
%>
