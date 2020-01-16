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
                    <li><a href="dashboard"> Dashboard</a></li>
                </ul>
            </div>
            <div class="col-8 col-s-7">
                <h1>User Management</h1>
                <c:forEach items="${requestScope.editerrors}" var="error">
                    <dl>
                        <dt><b> ${error.key}</b>
                        <dd>${error.value}</dd>
                    </dl>
                </c:forEach>
                <a href="add_user.form">Add a user</a> <br> <br>
                <table border="1">
                    <tr>
                        <th>ID</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Status</th>
                        <th>Secret</th>
                        <th>Role</th>
                        <th>Email</th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                    </tr>
                    <c:forEach items="${requestScope.users}" var="user">
                            <tr> 
                                <td>${user.getId()}</td>
                                <td>${user.getGname()}</td>
                                <td>${user.getsName()}</td>
                                <td>
                                <c:if test="${user.status eq 'true'}">
                                Enabled
                                </c:if>
                                
                                <c:if test="${user.status eq 'false'}">
                                Disabled
                                </c:if>
                                </td>
                                
                                <td>***</td> 
                                <td>${user.role}</td>
                                <td>${user.email}</td>
                                
                                
        <c:if test="${user.role ne 'Admin'}">
                            <td> <a href="my_books_manegment?id=${user.id}">View User Books</a></td>    
            <td> <a href="userEdit.form?id=${user.id}">Edit</a></td>
                            
                                <c:if test="${user.status eq 'true'}">
                                <td><a href="UserDisableEnable?id=${user.id}&type=deactivate">Disable</a></td>
                                </c:if>
                                
                                <c:if test="${user.status eq 'false'}">
                                <td><a href="UserDisableEnable?id=${user.id}&type=activate">Enable</a></td>
                                </c:if> 
                                
                                
                            <td> <a href="userDelete?id=${user.id}">Delete</a></td>  
                          
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

