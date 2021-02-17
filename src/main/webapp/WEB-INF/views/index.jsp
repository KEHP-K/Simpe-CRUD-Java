<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		<!DOCTYPE html>
		<html>
		<head>
		<meta charset="UTF-8">
		<title>Opsilo</title>
		<link rel='stylesheet' href="<c:url value="/resources/css/style.css" />">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
		</head>
		<body>
			<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
				<div class="container-fluid">
					<a href="/" class="navbar-brand">Opsilo</a>
					<div class="collapse navbar-collapse">
						<ul class="navbar-nav mr-auto">
							<li class="nav-item active">
								<a href="/" class="nav-link">Home</a>
							</li>
							<li class="nav-item active">
								<a href="/" class="nav-link">Board</a>
							</li>
						</ul>
					</div>
				</div>
			</nav>
			<div class="container">
				<br />
				<h1 class="display-3">Board</h1>
				<hr class="featurette-divider" />
				<a href="/new" class="btn btn-secondary float-end mb-3">New</a>
				<table class="table table-striped text-center">
					<thead class="table-dark">
						<tr>
							<th scope="col">#</th>
							<th scope="col">Title</th>
							<th scope="col">Author</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="post" items="${postList}">
							<tr>
								<td>
									<c:out value="${ post.id }" />
								</td>
								<td>
									<a href="/<c:out value="${ post.id }" />" class="post-title"><c:out value="${ post.title }" /></a>
								</td>
								<td>
									<c:out value="${ post.author }" />
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</body>
		</html>