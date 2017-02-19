<%@ tag language="java" pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ attribute name="title" required="true" %>
<%@ attribute name="bodyClass" required="false" %>
<%@ attribute name="extraScripts" fragment="true" %>

<!DOCTYPE html>
<html>
<head>
	<c:url value="/resources" var="resourcesPath" />
	<meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
	
	<link rel="icon" type="image/png" href="${resourcesPath}/imagens/favicon-32x32.png" sizes="32x32">
	<link rel="icon" type="image/png" href="${resourcesPath}/imagens/favicon-16x16.png" sizes="16x16">
	
	<link rel="stylesheet" href="${resourcesPath}/components/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${resourcesPath}/components/bootstrap/css/bootstrap-theme.min.css" />
    <link rel="stylesheet" href="${resourcesPath}/components/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" href="${resourcesPath}/css/main.min.css" />
			
	<title>${title } - Intera Consultoria</title>
</head>

<body class="${bodyClass}">
	<%@include file="/WEB-INF/views/header.jsp" %>
	
	<jsp:doBody />
	
	<jsp:invoke fragment="extraScripts"></jsp:invoke>
	
	<%@include file="/WEB-INF/views/footer.jsp" %>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"/></script>
	<script src="${resourcesPath}/components/bootstrap/js/bootstrap.min.js"/></script>
</body>
</html>