<html>
  <head>
  <meta charset="utf-8">
  <meta http-equiv="content-type" content="text/html;charset=utf-8" />
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="css/cadastro.css" rel="stylesheet">
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!------ Include the above in your HEAD tag ---------->
 <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">
  </head>
   <title>Bibliotec Cadastro</title>
<body id="LoginForm">
<div class="container">
<div class="login-form">
<div class="main-div">
    <div class="panel">
   <h2>Cadastro do Funcionário</h2>
   <p>Preencha seus dados</p>
   </div>
    

      <div class="form-group">
        
          <form method="POST" action="cadastra_prof.php">
     
            <input type="text" name="rm" class="form-control" placeholder="RM">

        </div>

        <div class="form-group">


            <input type="text" name="nome" class="form-control" placeholder="Nome">

        </div>

        <div class="form-group">


            <input type="text" name="telefone" class="form-control" placeholder="Telefone">

        </div>


         <div class="form-group">


            <input type="text" name ="email" class="form-control"  placeholder="Email ">

        </div>


        <div class="form-group">


            <input type="Password" name="senha" class="form-control" placeholder="Senha">

        </div>

        
        <br>
        <div class="forgot">
        <a href="login_professor.php">Ja está cadastrado?</a><br>
        <a href="escolha.html">Voltar</a>
</div>
        <button type="submit" class="btn btn-primary" href="cadastra_prof.php">Cadastrar</button>

    </form>
    </div>
<p class="botto-text"> &copy Bibliotec</p>
</div></div></div>


</body>
</html>