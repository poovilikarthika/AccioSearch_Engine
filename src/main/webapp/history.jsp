<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.Accio.HistoryResult"%>

<html>
<body>
        <form action = "https://poovili-search-engine.herokuapp.com/">
            <button type = "submit">Back to home page </button>
        </form>

        <table border = 2>
            <tr>
                <td>Name</td>
                <td>Link</td>
            </tr>
            <%
                ArrayList<HistoryResult> results = (ArrayList<HistoryResult>)request.getAttribute("results");
                for(HistoryResult result: results){
            %>
                    <tr>
                        <td><%out.println(result.getName());%></td>
                        <td><a href = "<%out.println(result.getLink());%>">
                        <%out.println(result.getLink());%></a></td>
                    </tr>
            <%
                }
            %>
        </table>
</body>
</html>