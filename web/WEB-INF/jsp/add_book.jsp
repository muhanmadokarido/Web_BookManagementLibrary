<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>SunLabLibrary-Add User</title>
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
                <form action="add_book.save" method="post">
                    <fieldset>
                        <legend>Add New Book</legend>
                        <p>
                            <label for="b_title">Book Title</label>
                            <input type="text" id="b_title" name="b_title" required>
                        </p>                        
                        <p class="right-btn">
                            <input type="submit" value="Submit">                           
                            <input type="button" value="Cancel" onclick="document.getElementById('userManegmentLink').click()">
                        </p>
                    </fieldset>
                       <a id="userManegmentLink" href="viewUserBooks" style="visibility: hidden">Hidden</a>
                </form>
            </div>
            <div class="col-3 col-s-3"></div>
        </div>
        <div class="footer">
            <p>Developed By Mohammad Alkhaled KIC_ID18127</p>
        </div>
    </body>
</html>
