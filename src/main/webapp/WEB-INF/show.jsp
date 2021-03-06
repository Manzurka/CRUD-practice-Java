<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>${idea.name}</title>
		<style type="text/css">
        	<%@include file="static/css/style.css" %>
        </style>
	</head>
	<body>
		<form id="logoutForm" method="POST" action="/logout" class="logout">
	        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	        <input type="submit" value="Logout" />
	    </form>
		<a class="home" href="/ideas">Dashboard</a>
		<h3>${idea.name}</h3>
		<p>Created By: ${idea.creator.name}</p>
		<h3>Users who liked your idea:</h3>
		<table>
				<tr>
					<th>Name</th>
				</tr>
				<tbody>
					<c:forEach var="user" items="${idea.likedUsers}">
						<tr>
							<td><c:out value="${user.name}"/></td>
						</tr>
					</c:forEach>
				</tbody>
		</table>
		<br>
		<a href="/ideas/${idea.id}/edit"><button>Edit</button></a>
	</body>
</html>