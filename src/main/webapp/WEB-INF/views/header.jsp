<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>

<security:authentication var="usuario" property="principal"/>

<header>
	<nav class="navbar navbar-default">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#collapse-navbar" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				
				<img class="img-responsive" alt="imagem intera" src="${resourcesPath}/imagens/logo-intera-50x.png">
			</div>
			<div class="collapse navbar-collapse" id="collapse-navbar">
				<ul class="nav navbar-nav">
					<li><a href="#"><i class="fa fa-user fa"></i> ${usuario.nome }</a></li>
					<li><a href="#"><i class="fa fa-clock-o fa"></i> Lançamento de Horas</a></li>
					<li><a href="#"><i class="fa fa-bar-chart fa"></i> Relatório</a></li>
					<security:authorize access="hasRole('ADMIN')">
						<li><a href="#"><i class="fa fa-industry fa"></i> Relatório da Fabrica</a></li>
					</security:authorize>		
					<li><a class="btn btn-lg btn-link btn-block" href="${s:mvcUrl('HC#index').build()}/logout">Sair <i class="fa fa-sign-out fa"></i></a></li>
				</ul>
			</div>
		</div>
	</nav>
</header>