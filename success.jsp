<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp" >Please Login</a>
<%} else {
%>
<table align="center">
<tr><td><b >Welcome </b><%=session.getAttribute("userid")%></td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;<a href='logout.jsp' ><b >Log out</b></a></td></tr>
</table>
<%
    }
%>