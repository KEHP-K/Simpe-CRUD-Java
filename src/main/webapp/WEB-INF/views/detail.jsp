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
				<h1 class="display-3">Post</h1>
				<hr class="featurette-divider" />
				<div class="input-group mb-2">
					<span class="input-group-text">Title</span>
					<input type="text" class="form-control bg-light" value="<c:out value="${ post.title }" />" readonly disabled />
				</div>
				<div class="input-group mb-2">
					<span class="input-group-text">Author</span>
					<input type="text" class="form-control bg-light" value="<c:out value="${ post.author }" />" readonly disabled />
				</div>
				<div class="input-group mb-3">
					<span class="input-group-text">Content</span>
					<textarea rows=12 class="form-control bg-light" readonly disabled><c:out value="${ post.content }" /></textarea>
				</div>
				<a href="/" class="btn btn-secondary">Back</a>
				<div class="float-end">
					<a href="/<c:out value="${ post.id }" />/edit" class="btn btn-primary">Edit</a>
					<form method="POST" action="/<c:out value="${ post.id }" />" class="danger-form">
						<input type="hidden" name="_method" value="DELETE" />
						<input type="submit" class="btn btn-danger" value="Delete" />
					</form>
				</div>
			</div>
		</body>
		</html>