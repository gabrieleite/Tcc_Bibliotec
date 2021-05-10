<?php 

include "conecta.php";




$rm = $_REQUEST['rm'];
$nome = $_REQUEST['nomealuno'];
$email = $_REQUEST['email'];
$telefone = $_REQUEST['telefone'];
$curso = $_REQUEST['curso'];
$turma = $_REQUEST['turma'];
$senha = $_REQUEST['senha'];







$result_cadastro = "INSERT INTO aluno(rm, nomealuno, email, telefone, curso, turma, senha) VALUES('$rm','$nome', '$email', '$telefone', '$curso', '$turma', '$senha')";

$conexao->query($result_cadastro);
header('location: login.php');

?>