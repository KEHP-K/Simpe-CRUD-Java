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
				<h1 class="display-3">Edit Post</h1>
				<hr class="featurette-divider" />
				<form method="POST" action="/<c:out value="${ post.id }" />">
					<input type="hidden" name="_method" value="PUT" />
					<div class="input-group mb-2">
						<span class="input-group-text">Title</span>
						<input type="text" class="form-control bg-light" name="title" placeholder="Title" value="<c:out value="${ post.title }" />"  />
					</div>
					<div class="input-group mb-2">
						<span class="input-group-text">Author</span>
						<input type="text" class="form-control bg-light" name="author" value="<c:out value="${ post.author }" />"  />
					</div>
					<div class="input-group mb-3">
						<span class="input-group-text">Content</span>
						<textarea rows=12 name="content" class="form-control bg-light"><c:out value="${ post.content }" /></textarea>
					</div>
					<a href="/<c:out value="${ post.id }" />" class="btn btn-secondary">Back</a>
					<input type="submit" class="btn btn-primary float-end" value="OK" />
				</form>
			</div>
		</body>
		</html>