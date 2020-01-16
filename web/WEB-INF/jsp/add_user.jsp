<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>SunLabLibrary-Add Book</title>
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
                <form action="add_user.save" method="post">
                    <fieldset>
                        <legend>Add New Book</legend>
                        <p>
                            <label for="gName">First Name</label>
                            <input type="text" id="gName" name="gName" required>
                        </p>                        
                        <p>
                            <label for="sName">Last Name:</label>
                            <input type="text" id="sName" name="sName" required>
                        </p>
                         <p>
                            <label for="role">Role:</label>
                            <input type="text" id="role" name="role" disabled value="Cus">
                        </p>
                        <p>
                            <label for="userName">Email:</label>
                            <input type="text" id="email" name="email" required>
                        </p>
                        <p>
                            <label for="userName">Password:</label>
                            <input type="password" id="secret" name="secret" required>
                        </p>
                        <p class="right-btn">
                            <input type="submit" value="Submit">                           
                            <input type="button" value="Cancel" onclick="document.getElementById('userManegmentLink').click()">
                        </p>
                    </fieldset>
                       <a id="userManegmentLink" href="user_manegment" style="visibility: hidden">Hidden</a>
                </form>
            </div>
            <div class="col-3 col-s-3"></div>
        </div>
        <div class="footer">
            <p>Developed By Mohammad Alkhaled KIC_ID18127</p>
        </div>
    </body>
</html>
