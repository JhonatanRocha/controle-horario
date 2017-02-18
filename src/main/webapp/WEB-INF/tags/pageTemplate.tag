<%@ tag language="java" pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ attribute name="title" required="true" %>
<%@ attribute name="bodyClass" required="false" %>
<%@ attribute name="extraScripts" fragment="true" %>

<!DOCTYPE html>
<html>
<head>
	<!-- <c:url value="/" var="contextPath" /> -->
	  <meta charset="utf-8"/>
		  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
		  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
			
		<!-- <title>Coding House Books of Java, SOA, Android, iPhone, Ruby on Rails e
			and a lot more - Coding House</title> -->
			
		<title>${title } - Intera Consultoria</title>
</head>

<body class="${bodyClass}">
	<%@include file="/WEB-INF/views/header.jsp" %>
	
	<jsp:doBody />
	
	<jsp:invoke fragment="extraScripts"></jsp:invoke>
	
	<%@include file="/WEB-INF/views/footer.jsp" %>

</body>
</html>