<?php 

include "conecta.php";




$rm = $_REQUEST['rm'];
$nome = $_REQUEST['nome'];
$email = $_REQUEST['email'];
$senha = $_REQUEST['senha'];
$telefone = $_REQUEST['telefone'];







$result_cadastro = "INSERT INTO professor(rm, nome, email, senha, telefone) VALUES('$rm','$nome', '$email','$senha', '$telefone')";

$conexao->query($result_cadastro);
header('location: login_prof.php');

?>