<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <title>SunLabLibrary-MyBooks</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/styles.css">
    </head>
    <body>
        <div class="header">
            <span><h1>SunLabLibrary</h1><p style="direction: rtl">Welcome ${sessionScope.userName}(<a href="logout">logout</a>)</p></span>
        </div>
        <div class="row">
            <div class="col-4 col-s-5 menu">
                <ul>
                    <li><a href="dashboard"> Dashboard</a></li>
                </ul>
            </div>
            <div class="col-8 col-s-7">
                <h1>Friend Books </h1>
                <c:forEach items="${requestScope.editerrors}" var="error">
                    <dl>
                        <dt><b> ${error.key}</b>
                        <dd>${error.value}</dd>
                    </dl>
                </c:forEach>
                <table border="1">
                    <tr>
                        <th>Book ID</th>
                        <th>Book Title</th>
                        <th>Is Lended</th>
                        <th>Owner Id</th>     
                        <th></th>

                    </tr>
                    <c:forEach items="${requestScope.books}" var="book">
                            <tr> 
                                <td>${book.getBook_num()}</td>
                                <td>${book.getBook_title()}</td>
                                <td>
                                <c:if test="${book.isRent_Status() eq 'true'}">
                                Lent
                                </c:if>
                                <c:if test="${book.isRent_Status()  eq 'false'}">
                                Not Lent
                                </c:if>
                                </td>

                                <td>${book.getBook_owner_str()}</td> 
                          
                    <c:if test="${book.isRent_Status() eq 'false'}">     
                       <td><a href="AskLend?id=${book.getBook_num()}&OID=${book.getBook_owner()}">Ask For Borrowing</a></td>  
                    </c:if>                        
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

