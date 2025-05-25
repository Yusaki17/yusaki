$(document).ready(function(){
	listar();
});

function listar(){
	$.get("usuario",{"opc":1,},function(data){
		var x = JSON.parse(data);
				$("#tablita tbody tr").remove();
				x.forEach(function(item) {
					$("#tablita").append("<tr><td>" + item.username + "</td><td><a href='#' onclick='editar(" + item.usuarioID + ")' class='btn btn-warning'><i class='far fa-edit'></i></a></td><td><a href='#' onclick='eliminar(" + item.idescuela + ")' class='btn btn-danger'><i class='fas fa-trash-alt'></i></a></td></tr>"
					);
				});
	})
}