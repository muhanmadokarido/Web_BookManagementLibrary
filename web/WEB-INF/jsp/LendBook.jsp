<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Sun Lab Library- Lend Book</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="stylesheet" href="css/styles.css" type="text/css"/>
    </head>
    <body>
        <div class="header">
            <h1> SunLabLibrary</h1>
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
                <form action="bookLend.save" method="post">
                    <fieldset>
                        <legend>Lend Book</legend>
                        <p>
                            <label for="book_id">Book Id</label>
                            <input type="text" id="book_id" name="book_id"  value="<%= request.getAttribute("book_id") %>" required>
                        </p> 
                        
                        <p>
                            <label for="book_title">Book Title</label>
                            <input type="text" id="book_title" name="book_title"  value="<%= request.getAttribute("book_title") %>" required>
                        </p> 

                        <p>
                            <label for="Borrower_uname">Lend To</label>
                            <input type="text" id="Borrower_uname" name="Borrower_uname" required>
                        </p> 
                        
                        <p class="right-btn">
                            <input type="submit" value="Submit">
                            <input type="button" value="Cancel" onclick="document.getElementById('userManagementLink').click()">
                        </p>
                    </fieldset>
                </form>
                <a id="userManagementLink" href="viewUserBooks" style="visibility: hidden">My Profile</a>
            </div>
            <div class="col-3 col-s-3"></div>
        </div>
        <div class="footer">
            <p>Developed By Mohammad Alkhaled KIC_ID18127</p>
        </div>
    </body>
</html>
