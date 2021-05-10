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
   <title>Bibliotec Login</title>
<body id="LoginForm">
<div class="container">
<div class="login-form">
<div class="main-div">
    <div class="panel">
   <h2> Login</h2>
   <p>Coloque seu nome e RM</p>
   </div>
   
            <div class="form-group"> 
              <form  method="POST" action="login_alu.php" class="navbar-form navbar-right" role="form" >
              <input type="text" name="rm" placeholder="RM" class="form-control">
            </div>
            <div class="form-group">
              <input type="password" name="senha" placeholder="Senha" class="form-control">
            </div>
            


        <div class="forgot">
        <a href="cadastro.php">Cadastre-se aqui!</a>
        <p>
         <a href="index.html">Voltar</a>
       </p>

</div>
        
        <button type="submit" class="btn btn-primary" href="login_alu.php">Entrar</button>


    </form>
    </div>
<p class="botto-text"> &copy Bibliotec</p>
</div></div></div>


</body>
</html>