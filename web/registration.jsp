<%-- 
    Document   : index
    Created on : 2015-04-30, 18:09:25
    Author     : Kr
--%>
<%@ page language="java" pageEncoding="iso-8859-2" contentType="text/html; 
charset=iso-8859-2" %>
<%@ page import="connection.*" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MovieStore</title>
        <style type="text/css">
            
            table{
                display: block;
                width: 250px;
                height: 50px;
                background-color: red;
            }
            
        </style>
    </head>
    <body>
        <%
            Connect connect = new Connect();
            Connection con = connect.getConnection();
            Statement stmt = con.createStatement();
        %>
        <form action="" method="get">
            <table>
                <tr>
                    <td>e-mail:</td> <td><input type="text" name="mail"/></td>
                </tr>
                <tr>
                    <td>has³o:</td> <td><input type="password" name="haslo"/></td>
                </tr>
                <tr>
                <button type="submit">Potwierd¼</button>
                
                </tr>
            </table>
        </form>
        
        <%
            //Rejestracja
            if(request.getParameter("mail")!=null){        
                String mail = request.getParameter("mail");
                String haslo = request.getParameter("haslo");
                String ins = "INSERT INTO \"Users\"(email,passowrd) VALUES(\'"+mail+"\',\'"+haslo+"\')";
                stmt.executeUpdate(ins);
                stmt.close();
                con.close();
            }
        %>
    </body>
</html>
