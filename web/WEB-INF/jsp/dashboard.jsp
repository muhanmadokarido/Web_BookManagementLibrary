<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Sun Lab Library- HomePage</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/styles.css">
    </head>
    <body>
        <div class="header">
            <span><h1>Sun Lab Library</h1><p style="direction: rtl">Welcome ${sessionScope.userName}(<a href="logout">logout</a>)</p></span>
        </div>
        <div class="row">
            <div class="col-4 col-s-5 menu">
              <c:if test="${sessionScope.role eq 'Admin'}">
                <ul>
                    <li><a href="dashboard"> Dashboard</a></li>
                    <li><a href="myprofile"> Edit My Profile</a></li>
                    <li><a href="user_manegment">User Management </a></li>
                    <li><a href="admin_approve">Pending Books </a></li>
                </ul>        
              </c:if>
                
              <c:if test="${sessionScope.role eq 'Cus'}">
                <ul>
                    <c:if test="${requestScope.ActivenotificationsNumber ne '0'}">
                        <li style="background:red"><a  href="viewNotifications">Notifications</a> <font style="float: right;" color="white">   ${requestScope.ActivenotificationsNumber} New </font></li>
                    </c:if>

                    <c:if test="${requestScope.ActivenotificationsNumber eq '0'}">
                        <li><a  href="viewNotifications">Notifications</a></li>
                    </c:if>
                        
                    <li><a href="dashboard"> Dashboard</a></li>
                    <li><a href="myprofile"> Edit My Profile</a></li>
                    <li><a href="viewUserBooks">My Books Management</a></li>
                    <li><a href="OthersBooks">Others Books</a></li>
                    <li><a href="by_me_books_manegment">Books I Lent</a></li>
                    <li><a href="to_me_books_manegment">Books I Borrowed</a></li>
                    
                </ul>        
              </c:if>
                
            </div>
            <div class="col-8 col-s-7">
               <c:forEach items="${requestScope.editerrors}" var="error">
                    <dl>
                        <dt><b> ${error.key}</b>
                        <dd>${error.value}</dd>
                    </dl>
                </c:forEach>
            </div>
        </div>

        <div class="footer">
            <p>Developed By Mohammad Alkhaled KIC_ID18127</p>
        </div>

    </body>
</html>
