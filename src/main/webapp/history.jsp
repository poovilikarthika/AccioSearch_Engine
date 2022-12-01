<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.Accio.HistoryResult"%>

<html>
<head>
    <link rel="stylesheet" type="text/css" href="Style.css">
</head>

<body>
    <div class = "homeButton">
        <form action = "https://poovili-search-engine.herokuapp.com/">
        <button type = "submit">Back to home page </button>
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

    <div class = "resultTable">
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
    </div>

</body>
</html>