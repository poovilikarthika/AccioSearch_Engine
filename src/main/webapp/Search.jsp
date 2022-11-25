<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.Accio.SearchResult"%>

<html>
<head>
    <link rel="stylesheet" type="text/css" href="Style.css">
</head>

<body>

    <h1>Search Engine</h1>

    <form action = "Search">
        <input type = "text" name = "keyword">
        <button type = "Submit"> Search </button>
    </form>

    <form action = "History">
        <button type = "submit">History </button>
    </form>

    <table border = 2>
        <tr>
            <td>Name</td>
            <td>Link</td>
        </tr>

         <%
            ArrayList<SearchResult> results = (ArrayList<SearchResult>)request.getAttribute("results");

            for(SearchResult result: results){
         %>

        <tr>
            <td><%out.println(result.getTitle());%></td>
            <%out.println(result.getLink());%></a></td>
        </tr>

        <%
            }
        %>
    </table>
</body>
</html>