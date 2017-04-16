<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Twilio Form test</title>
        <link rel="stylesheet" href="style.css" type="text/css" />
        <link href='http://fonts.googleapis.com/css?family=Rambla' rel='stylesheet' type='text/css'>
    </head>
    <body>
    	<p>Given that I'm using a trial Twilio account, your phone number needs to be verified first. Shoot me an email so I can add it to the list.</p>
    	<p>After picking up your phone, please make sure to press any key. You will hear your message after that.</p>
        <div id="main">
            <form method="get" action="sms2phoneServlet">
                <p>Please enter a US phone number:</p>
                <input type="text" name="phone" maxlength="12"/>
                <p>And a message:</p>
                <textarea name="msg"> </textarea>
                <input type = "submit" />
            </form>
        </div>
        <div class="copyright">
        	<p>By <a href="mailto:laucmar@gmail.com">Laura Martinez</a>.</p>
        	<p class="pow"><a href="https://www.twilio.com/" style="text: decoration: none; display: inline-block; width: 166px; height: 0; overflow: hidden; padding-top: 31px; background: url(https://www.twilio.com/packages/company/img/logos_icon_poweredbysmall.png) no-repeat;">powered by Twilio™</a></p>
        </div>
    </body>
</html>