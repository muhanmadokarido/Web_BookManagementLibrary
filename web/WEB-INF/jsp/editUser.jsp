<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Edit User Profile</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="stylesheet" href="css/styles.css" type="text/css"/>
    </head>
    <body>
        <div class="header">
            <h1> WeBill</h1>
        </div>
        <div class="row">
            <div class="col-3 col-s-3"></div>
            <div class="col-6 col-s-6">
                <c:forEach items="${requestScope.editerrors}" var="error">
                    <dl>
                        <dt><b> ${error.key}</b>
                        <dd>${error.value}</dd>
                    </dl>
                </c:forEach>
                <form action="userEdit.save" method="post">
                    <fieldset>
                        <legend>Edit User Profile</legend>
                        <p>
                            <label for="userID">User ID:</label>
                            <input type="text" id="userID" name="userID" value="<%= request.getAttribute("userID") %>" disabled>
                            <input type="text" id="old_userID" name="old_userID" value="<%= request.getAttribute("userID") %>" hidden>
                        </p>
                        <p>
                            <label for="gName">First Name:</label>
                            <input type="text" id="gName" name="gName" value="<%= request.getAttribute("gName") %>" required>
                            <input type="text" id="old_gName" name="old_gName" value="<%= request.getAttribute("gName") %>" hidden>
                        </p>
                        <p>
                            <label for="sName">Last Name:</label>
                            <input type="text" id="sName" name="sName" value="<%= request.getAttribute("sName") %>" required>
                            <input type="text" id="old_meterAddress" name="old_sName" value="<%= request.getAttribute("sName") %>" hidden>
                        </p>
                        <p>
                            <label for="email">Email:</label>
                            <input type="text" id="email" name="email" value="<%= request.getAttribute("email") %>" disabled>
                            <input type="text" id="old_email" name="old_email" value="<%= request.getAttribute("email") %>" hidden>
                        </p>
                        <p>
                            <label for="secret">Password:</label>
                            <input type="password" id="secret" name="secret" value="<%= request.getAttribute("secret") %>" required>
                           
                        </p>
                        <p class="right-btn">
                            <input type="submit" value="Submit">
                            <input type="button" value="Cancel" onclick="document.getElementById('userManagementLink').click()">
                        </p>
                    </fieldset>
                </form>
                <a id="userManagementLink" href="user_manegment" style="visibility: hidden">My Profile</a>
            </div>
            <div class="col-3 col-s-3"></div>
        </div>
        <div class="footer">
            <p>Developed By Mohammad Alkhaled KIC_ID18127</p>
        </div>
    </body>
</html>