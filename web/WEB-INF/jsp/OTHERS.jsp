<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <title>WeBill</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/styles.css">
    </head>
    <body>
        <div class="header">
            <span><h1>Sun Lab Library</h1><p style="direction: rtl">Welcome ${sessionScope.userName}(<a href="logout">logout</a>)</p></span>
        </div>
        <div class="row">
            <div class="col-4 col-s-5 menu">
                <ul>
                    <li><a href="dashboard"> My Friends </a></li>
                </ul>
            </div>
            <div class="col-8 col-s-7">
                <h1>My Friends</h1>
                <c:forEach items="${requestScope.editerrors}" var="error">
                    <dl>
                        <dt><b> ${error.key}</b>
                        <dd>${error.value}</dd>
                    </dl>
                </c:forEach>
                <table border="1">
                    <tr>

                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Email</th>
                        <th></th>
                    </tr>
                    <c:forEach items="${requestScope.users}" var="user">
                            <tr> 
                                <td>${user.getGname()}</td>
                                <td>${user.getsName()}</td>
                                <td>${user.email}</td>
                            <td> <a href="one_books_manegment?id=${user.id}">View Books</a></td>    
                          
                            </tr>
                    </c:forEach>
                </table>
                <p></p>
                <p></p>
                <p></p>
                <p></p>
            </div>
        </div>

        <div class="footer">
            <p>Developed By Mohammad Alkhaled KIC_ID18127</p>
        </div>

    </body>
</html>

