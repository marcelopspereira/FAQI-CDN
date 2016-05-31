<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description"
	content="A front-end template that helps you build fast, modern mobile web apps.">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
<title>Insert title here</title>

<jsp:include page="libsHome.jsp" />
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
<body
	class="mdl-demo mdl-color--grey-100 mdl-color-text--grey-700 mdl-base">

	<jsp:include page="message.jsp" />
	<c:out value="${msg.getMsg()}" />

	<br>

	<div
		class="mdl-layout mdl-layout--fixed-header mdl-js-layout--fixed-header  mdl-color--white-100">
		<header
			class="mdl-layout__header mdl-layout__header--scroll mdl-color--primary">
		<div class="mdl-layout--large-screen-only mdl-layout__header-row">
		</div>
		<div class="mdl-layout--large-screen-only mdl-layout__header-row">
			<h3>Name &amp; Title</h3>
		</div>
		<div class="mdl-layout--large-screen-only mdl-layout__header-row">
		</div>
		<div
			class="mdl-layout__tab-bar mdl-js-ripple-effect mdl-color--primary-dark">
			<a href="#home" class="mdl-layout__tab is-active">Home</a> <a
				href="#addcontato" class="mdl-layout__tab">Features</a> <a
				href="#features" class="mdl-layout__tab">Details</a> <a
				href="#features" class="mdl-layout__tab">Technology</a> <a
				href="logout" class="mdl-layout__tab">Logout</a>
			<button
				class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored mdl-shadow--4dp mdl-color--accent"
				id="add">
				<i class="material-icons" role="presentation">add</i> <span
					class="visuallyhidden">Add</span>
			</button>
		</div>
		</header>
		<main class="mdl-layout__content main_content"> <section
			class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
		<table
			class="mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp">
			<thead>
				<tr>
					<th class="mdl-data-table__cell--non-numeric">Nome</th>
					<th class="mdl-data-table__cell--non-numeric">Apelido</th>
					<th>Telefone</th>
					<th>Celular</th>
					<th>Email</th>
					<th>Data nascimento</th>
					<th colspan="1">Ações</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="contato" items="${contatos}">
					<tr>
						<td class="mdl-data-table__cell--non-numeric">${contato.getNome()}</td>
						<td class="mdl-data-table__cell--non-numeric">${contato.getApelido()}</td>
						<td>${contato.getTelefoneFormated()}</td>
						<td>${contato.getCelularFormated()}</td>
						<td>${contato.getEmail()}</td>
						<td>${contato.getData_nasc()}</td>
						<td colspan="1">
							<button class="mdl-button mdl-js-button mdl-button--icon">
								<i class="material-icons">edit</i>
							</button>
							<button class="mdl-button mdl-js-button mdl-button--icon">
								<i class="material-icons">close</i>
							</button> <%-- <form method="POST">
									<input type="hidden" name="contato_nome"
										value="${contato.getNome()}" />
									<button class="btn btn-default" type="submit"
										onClick="return confirm('Deseja excluir o contato ${contato.getNome()}?')">Excluir</button>
								</form> --%>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		</section> </main>
</body>
</html>