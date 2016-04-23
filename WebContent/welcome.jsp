<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<html>
    <head>
        <title>Welcome <%=session.getAttribute("name")%></title>

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
                            </button> <a class="navbar-brand" href="welcome.jsp">Usuário: <%=session.getAttribute("name")%></a>

                        </div>
                        <p class="navbar-text navbar-right" style="margin-right: 3em;"><a class="btn btn-success btn-large" onClick="history.go(-1)">Voltar</a>  <a class="btn btn-success btn-large" onClick="history.forward()">Avançar</a>  <a class="btn btn-primary btn-large" href="/logout">Sair</a></p>				
                    </nav>
                </div>

                <div class="row" style="margin-top:4em;">
                    <div class="jumbotron">
                        <h2 class="text-center">Bem-Vindo  <%=session.getAttribute("name")%> </h2>
                        <br><br>
                        <p class="text-center"><a href="listAluno.jsp" class="btn btn-primary btn-lg">Cadastrar Alunos</a></p>
                        <br><br>				
                    </div>
                </div>

            </div>		
        </div>

    </body>
</html>