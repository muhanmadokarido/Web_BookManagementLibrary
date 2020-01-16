<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Sun Lab Library- Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="stylesheet" href="css/styles.css" type="text/css"/>
    </head>
    <body>
        <div class="header">
            <h1>SunLabLibrary</h1>
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
                
                <form action="login.action" method="post">
                    <fieldset>
                        <legend>Log in</legend>
                        <p>
                            <label for="userName">Login ID:</label>
                            <input type="text" id="userName" name="userName" required>
                        </p>
                        <p>
                            <label for="userName">Secret:</label>
                            <input type="password" id="secret" name="secret" required>
                        </p>
                        <p class="right-btn">
                            <input type="submit" value="Submit">
                        </p>
                    </fieldset>
                </form>
            </div>
            <div class="col-3 col-s-3"></div>
        </div>
        <div class="footer">
            <p>Developed By Mohammad Alkhaled KIC_ID18127</p>
        </div>
    </body>
</html>
