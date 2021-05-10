<?php
session_start();
require "conecta.php";

$rm = !empty($_REQUEST['rm'])?$_REQUEST['rm']:'';
$senha = !empty($_REQUEST['senha'])?$_REQUEST['senha']:'';

if($rm&&$senha){

	$consulta = "SELECT * FROM aluno WHERE rm = '$rm' AND senha = '$senha'";
	$resultado = $conexao->query($consulta);
	$registros = $resultado->num_rows;//retorna o nº de linhas encontrados com email e senha
	$resultado_usuario = mysqli_fetch_assoc($resultado);

	if($registros<>0){

		$_SESSION['rm'] = $resultado_usuario['rm'];
		$_SESSION['nomealuno'] = $resultado_usuario['nomealuno'];
		$_SESSION['email'] = $resultado_usuario['email'];
		$_SESSION['telefone'] = $resultado_usuario['telefone'];
		$_SESSION['curso'] = $resultado_usuario['curso'];
		$_SESSION['turma'] = $resultado_usuario['turma'];
		$_SESSION['senha'] = $resultado_usuario['senha'];
		header('Location: select.php');//joga usuario para pg restrita

	}

	else{
		
		header('Location: index.html');//joga usuario de volta para index.html
	}
}

	else{
		header('Location: index.html');//joga usuario de volta para index.html
	}

?>


