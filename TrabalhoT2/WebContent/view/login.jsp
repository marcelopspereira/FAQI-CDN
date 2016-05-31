<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Trabalho N2</title>
<jsp:include page="libs.jsp" />
<style type="text/css">
.mdl-layout {
	align-items: center;
	justify-content: center;
}

.mdl-layout__content {
	padding: 24px;
	flex: none;
}
</style>
</head>
<body>


	<jsp:include page="message.jsp" />
	<c:out value="${msg.getMsg()}" />

	<div
		class="mdl-layout mdl-layout--fixed-header mdl-js-layout  mdl-color--white-100">
		<main class="mdl-layout__content main_content">
		<div class="mdl-card mdl-shadow--6dp">
			<div class="mdl-card__title mdl-color--primary mdl-color-text--white">
				<h2 class="mdl-card__title-text">Agenda de Contatos</h2>
			</div>
			<div class="login-form-div mdl-grid mdl-shadow--2dp">
				<div class="mdl-card__supporting-text">
					<form method="GET"
						action="${pageContext.request.contextPath}/Login">
						<div class="mdl-cell mdl-cell--12-col cell_con">
							<i class="material-icons">person</i>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<div
								class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
								<!--<input class="mdl-textfield__input" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" id="sample2">-->
								<input class="mdl-textfield__input" name="txtusuario"
									type="text" id="txtusuario"> <label
									class="mdl-textfield__label" for="txtusuario">Username</label>
								<span class="mdl-textfield__error">Invalido Username...!</span>
							</div>
						</div>
						<div class="mdl-cell mdl-cell--12-col cell_con">
							<i class="material-icons">lock</i>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<div
								class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
								<input class="mdl-textfield__input" name="txtsenha" type="text"
									id="txtsenha"> <label class="mdl-textfield__label"
									for="txtsenha">Password</label>
							</div>
						</div>
						<div class="mdl-cell mdl-cell--12-col  login-btn-con">
							<input type="submit" name="btnlogin" value="Entrar"
								class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--primary btn " />
						</div>
					</form>
				</div>
			</div>
		</div>
		</main>
	</div>
</body>
</html>