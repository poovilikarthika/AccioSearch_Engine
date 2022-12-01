<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.Accio.SearchResult"%>

<html>
<head>
    <link rel="stylesheet" type="text/css" href="Style.css">
</head>

<body>
    <div class = "searchEngine">
        <div class = "historyButton">
                <form action = "History">
                    <button type = "submit">History </button>
                </form>

        </div>
        <div class= "logo">
             <h1>
             <span style="color:#FF0000">A</span>
             <span style="color:#66CC66">S</span>
             <span style="color:#FF9966">K</span>
             <span style="color:#FFCCCC">M</span>
             <span style="color:#FF0066">E</span>
             </h1>
        </div>

        <div class = "searchFormResult">
            <form action = "Search">
                <input type = "text" name = "keyword">
                <button type = "submit"> Search </button>
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
                        <td><%out.println(result.getName());%></td>
                        <td><a href = "<%out.println(result.getLink());%>">
                        <%out.println(result.getLink());%></a></td>
                    </tr>
            <%
                }
            %>
        </table>
    </div>


</body>
</html>