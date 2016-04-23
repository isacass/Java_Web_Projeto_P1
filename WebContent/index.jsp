<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<html>
    <head>
        <title>Login</title>

        <link rel="stylesheet" href="css/bootstrap.min.css">

        <link rel="stylesheet" href="css/bootstrap-theme.min.css">

        <link rel="StyleSheet" type="text/css" href="css/estilos.css" media="screen" >

        <script src="js/jquery.min.js"></script>

        <script src="js/bootstrap.min.js"></script>

    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <nav class="navbar navbar-default navbar-fixed-top navbar-inverse" role="navigation">
                        <div class="navbar-header">

                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                            </button> <a class="navbar-brand" href="#">Sistema de Cadastro de Alunos</a>

                        </div>							
                    </nav>
                </div>
                <!-- INICIO # INFO -->

                <div class="row">
                    <div class="jumbotron" align="center">
                        <h2 class="text-center">Sistema de Cadastro de Alunos</h2>
                        <br><br><br>                            
                        <p class="text-center"><a href="#" class="btn btn-primary btn-lg" role="button" data-toggle="modal" data-target="#login-modal">Entrar no Sistema</a></p>
                        <br><br><br><br>
                        <span class="label label-default"> Usuário : admin | Senha : 123456</span>
                    </div>
                </div>

            </div>	

        </div>

        <!-- FIM # INFO -->

        <!-- INICIO # MODAL LOGIN -->
        <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header" align="center">
                        <img class="img-circle" id="img_logo" src="images/alunosis.png">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
                        </button>
                    </div>

                    <!-- Inicio # DIV Form -->
                    <div id="div-forms" align="center">
                        <h3>Login</h3>
                        <!-- Inicio # Login Form -->
                        <form id="login-form" action="loginServlet" method="post">
                            <div class="modal-body">
                               
                                <input id="login_username" class="form-control" name="username"  type="text" placeholder="Usuário" required>
                                <input id="login_password" class="form-control" name="userpass" type="password" placeholder="Senha" required>
                                <br>                        
                            </div>
                            <div class="modal-footer">
                                <div>
                                    <button type="submit" class="btn btn-primary btn-lg btn-block">Login</button>
                                </div>											    	    
                            </div>
                        </form>
                        <!-- Fim # Login Form -->                                       


                    </div>
                    <!-- Fim # DIV Form -->

                </div>
            </div>
        </div>
        <!-- FIM # MODAL LOGIN -->
    </body>
</html>