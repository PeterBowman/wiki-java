<%--
    @(#)footer.jsp 0.01 20/01/2017
    Copyright (C) 2011 - 2017 MER-C
  
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as
    published by the Free Software Foundation, either version 3 of the
    License, or (at your option) any later version.
  
    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
 --%>
 
<%@ page import="java.time.*" %>
<%@ page import="javax.servlet.jsp.*" %>

<%
    Object error = request.getAttribute("error"); // always a string
    if (error != null)
    {
        out.println("<hr>");
        out.println("<span class=\"error\">" + error.toString() + "</span>");
    }
%>

<br>
<br>
<hr>
<p><%= request.getAttribute("toolname") %>: Copyright &copy; MER-C 2007-
<%= OffsetDateTime.now().getYear() %>. This tool is free software: 
you can redistribute it and/or modify it under the  terms of the 
<a href="//gnu.org/licenses/agpl.html">Affero GNU General Public License</a> as 
published by the Free Software Foundation, either version 3 of the License, or 
(at your option) any later version.

<p>
Source code is available <a href="//github.com/MER-C/wiki-java">here</a>. Report 
bugs at <a href="//en.wikipedia.org/wiki/User_talk:MER-C">my talk page</a> or 
the <a href="//github.com/MER-C/wiki-java/issues">Github issue tracker</a>.
        
<p><b>Navigate to:</b>
    <a href="./index.html">Tool directory</a> |
    <a href="./doc/index.html">Javadoc</a>
</body>
</html>

<%
    throw new SkipPageException(); // Exit
%>