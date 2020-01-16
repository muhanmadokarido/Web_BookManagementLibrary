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
            <span><h1>WeBill</h1><p style="direction: rtl">Welcome ${sessionScope.userName}(<a href="logout">logout</a>)</p></span>
        </div>
        <div class="row">
            <div class="col-4 col-s-5 menu">
                <ul>
                    
                </ul>
            </div>
            <div class="col-8 col-s-7">
            <a id="MyProfileLink" href="notificationReaded?id=${requestScope.assignment_Id}" style="visibility: hidden">My Profile</a>
            <input type="button" value="Back To Home Page" onclick="document.getElementById('MyProfileLink').click()">
                <h1>Notification</h1>
                

                <c:forEach items="${requestScope.editerrors}" var="error">
                    <dl>
                        <dt><b> ${error.key}</b>
                        <dd>${error.value}</dd>
                    </dl>
                    
                 
                </c:forEach>
                <c:if test="${requestScope.ActivenotificationsNumber eq '0'}">
                    No New Messages
                </c:if>
                
                 <c:if test="${requestScope.ActivenotificationsNumber ne '0'}">
                    <h2>You have ${requestScope.ActivenotificationsNumber} New Messages:</h2>
                <table border="1">
                    <tr>
                        <th>Message</th>
                        <th>Date</th>

                    </tr>
                    <c:forEach items="${requestScope.Activenotifications}" var="noti1">
                            <tr> 
                                <td>${noti1.getMess()}</td>
                                <td>${noti1.getNotiDate()}</td>                                                                                              
                            </tr>
                    </c:forEach>
                </table>
                </c:if>
                
                <h2>Previous Messages:</h2>
                
                <c:if test="${requestScope.UnActivenotificationsNumber ne '0'}">
                    
               
                <table border="1">
                    <tr>
                        <th>Message</th>
                        <th>Date</th>

                    </tr>
                    <c:forEach items="${requestScope.unActivenotifications}" var="noti1">
                            <tr> 
                                <td>${noti1.getMess()}</td>
                                <td>${noti1.getNotiDate()}</td>                                                                                              
                            </tr>
                    </c:forEach>
               </c:if>
                            
                            <c:if test="${requestScope.UnActivenotificationsNumber eq '0'}">
                                
                                No Previous Messages
                            </c:if>                            
                            
                </table>
                <p></p>
                <p></p>
                <p></p>
                <p></p>
            </div>
        </div>

        <div class="footer">
            <p>WeBill has been developed with in [2293] Software Development Experiments Course</p>
        </div>

    </body>
</html>

