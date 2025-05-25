<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="jspf/head.jspf"%>
</head>
<body>
	<div class="container">
		<%@include file="jspf/nav.jspf"%>
	</div>
	<div class="container mt-5 w-25">

		<div class="card">
			<div class="card-header d-flex justify-content-between">
				<h4>Posts</h4>
				<button class="btn btn-success" data-bs-toggle="modal"
					data-bs-target="#exampleModal" data-bs-whatever="@mdo">
					<i class="fa-solid fa-plus"></i>
				</button>
			</div>

			<div class="card-body">

				<table class="table" id="tablita">
					<thead>
						<tr>
							<th scope="col">Username</th>
							<th scope="col">Acción</th>
						</tr>
					</thead>
					<tbody>

					</tbody>
				</table>
			</div>
		</div>
	</div>
	<!-- MODAL CREAR -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">New Post</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form>
						<div class="mb-3">
							<label for="recipient-name" class="col-form-label">Usuario:</label>
							<select class="form-select" aria-label="Default select example" id="usuarios">
								
							</select>
						</div>
						<div class="mb-3">
							<label for="recipient-name" class="col-form-label">Post:</label>
							<input type="text" class="form-control" id="titulo">
						</div>
						<div class="mb-3">
							<label for="message-text" class="col-form-label">Descripción:</label>
							<textarea class="form-control" id="descripcion"></textarea>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Send Post</button>
				</div>
			</div>
		</div>
	</div>
	<%@include file="jspf/footer.jspf"%>
</body>
</html>