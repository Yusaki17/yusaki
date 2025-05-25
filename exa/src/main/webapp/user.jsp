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
				<h4>Usuarios</h4>
				<button class="btn btn-success" data-bs-toggle="modal"
					data-bs-target="#exampleModal1" data-bs-whatever="@mdo">
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
	<div class="modal fade" id="exampleModal1" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">New
						Usuario</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form>
						<div class="mb-3">
							<label for="recipient-name" class="col-form-label">username:</label>
							<input type="text" class="form-control" id="username">
						</div>
						<div class="mb-3">
							<label for="recipient-name" class="col-form-label">Password:</label>
							<input type="password" class="form-control" id="password">
						</div>

					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Send message</button>
				</div>
			</div>
		</div>
	</div>
	<!-- MODAL MODIFICAR -->
	<div class="modal fade" id="exampleModal2" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">New
						Usuario</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form>
						<div class="mb-3">
							<label for="recipient-name" class="col-form-label">username:</label>
							<input type="text" class="form-control" id="editusername">
							<input type="hidden" class="form-control" id="editid">
						</div>
						<div class="mb-3">
							<label for="recipient-name" class="col-form-label">Password:</label>
							<input type="password" class="form-control" id="editpassword">
						</div>

					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Send message</button>
				</div>
			</div>
		</div>
	</div>
	<%@include file="jspf/footer.jspf"%>
	<script type="text/javascript" src="js/user.js"></script>
</body>
</html>