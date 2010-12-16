<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <META http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>SimpleCAPTCHA Example</title>
    <link href="sc.css" type="text/css" rel="stylesheet" />
</head>
<body>
<br>

<h3>SimpleCAPTCHA Example - Simple CAPTCHA</h3>
<img src="<c:url value="simpleCaptcha.jpg" />"><br />
<p>A simple CAPTCHA which generates a new CAPTCHA on each page reload.</p>

<p>Simple CAPTCHA</a> | <a href="<c:url value="stickyCaptcha.jsp" />">Sticky CAPTCHA</a></p>

<p><a href="https://sourceforge.net/docman/?group_id=147810">SimpleCAPTCHA documentation</a></p>
</body>
</html>