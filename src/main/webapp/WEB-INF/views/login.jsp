<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Intera Consultoria - Controle de Horas</title>
    
    <c:url value="/resources" var="resourcesPath" />
    
    <link rel="icon" type="image/png" href="${resourcesPath}/imagens/favicon-32x32.png" sizes="32x32">
	<link rel="icon" type="image/png" href="${resourcesPath}/imagens/favicon-16x16.png" sizes="16x16">
    
    <link rel="stylesheet" href="${resourcesPath}/components/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${resourcesPath}/components/bootstrap/css/bootstrap-theme.min.css" />
    <link rel="stylesheet" href="${resourcesPath}/components/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" href="${resourcesPath}/css/main.min.css" />
</head>

<body class="body-login">
	<div class="container">
    	<div class="row vertical-offset-100">
    		<div class="col-md-4 col-md-offset-4">
    			<div class="panel panel-default">
			  		<div class="panel-heading">
			    		<img class="img-responsive img-center" alt="imagem intera" src="${resourcesPath}/imagens/logo-intera.png">
			 		</div>
				  	<div class="panel-body">
				    	<form:form servletRelativeAction="/login" method="post">
		                    <fieldset>
					    	  	<div class="form-group">
					    	  		<div class="input-group">
										<div class="input-group-addon"><i class="fa fa-envelope fa"></i></div>
					    		    	<input class="form-control" id="email-usuario" placeholder="Digite seu email" name="username" type="text">
					    			</div>
					    		</div>
					    		<div class="form-group">
					    			<div class="input-group">
										<div class="input-group-addon"><i class="fa fa-lock fa"></i></div>
					    				<input class="form-control" id="senha-usuario" placeholder="Digite sua senha" name="password" type="password">
					    			</div>
					    		</div>
					    		<button class="btn btn-lg btn-primary btn-block" type="submit" value="Login">Entrar <i class="fa fa-sign-in fa"></i></button>
					    	</fieldset>
				      	</form:form>
				    </div>
				</div>
			</div>
		</div>
	</div>
	
	<footer class="footer navbar-fixed-bottom">
      <div class="container">
        	<p class="text-center text-muted">Intera Consultoria © 2017</p>
      </div>
    </footer>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"/></script>
	<script src="${resourcesPath}/components/bootstrap/js/bootstrap.min.js"/></script>
</body>
</html>