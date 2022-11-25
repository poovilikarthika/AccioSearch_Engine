<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.Accio.SearchResult"%>

<html>
<head>
    <link rel="stylesheet" type="text/css" href="Style.css">
</head>

<body>
    <div class = "searchEngine">

    <div class= "logo">
        <h1>My Search Engine</h1>
    </div>

    <div class = "searchFormResult">
         <form action = "Search">
            <input type = "text" name = "keyword">
            <button type = "Submit"> Search </button>
         </form>
    </div>

    <div class = "historyButton">
        <form action = "History">
            <button type = "submit">History </button>
        </form>
    </div>
    </div>

   <div class = "resultTable">
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
    </div>
</body>
</html>