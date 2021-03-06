<%-- 
    Document   : result
    Created on : Oct 12, 2011, 2:08:58 PM
    Author     : cw1491
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="myTags" tagdir="/WEB-INF/tags" %>
<jsp:useBean id="item" scope="request" class="edu.ccsu.solns.Item" />
<jsp:setProperty name="item" property="*"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <myTags:SolnItemTagFile store="Chad's" />
        <%
            Double totalCost = (Double) session.getAttribute("totalCost");
            if (totalCost == null) {
                totalCost = 0.0;
            }
            totalCost += item.getItemCost();
            session.setAttribute("totalCost", totalCost);
        %>
        Total cost: <%=session.getAttribute("totalCost")%> 
    </body>
</html>
