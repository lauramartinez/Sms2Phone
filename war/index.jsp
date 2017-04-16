<%@ page contentType="text/xml;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<Response>
	<Say voice='man'>You just got a sms to phone message:</Say>
	<Pause length="1"/>
	<Say voice='woman'><%= request.getParameter("msg") %></Say>
	<Pause length="1"/>
	<Say voice='man'>Goodbye!</Say>
	<Pause length="1"/>
	<Hangup />
</Response>