<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

        <title>Novo Aluno</title>

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

                <div class="container" style="padding-top:5em">
                    <div class="row">
                        <h2>Dados dos Alunos</h2>
                        <p>Insira as informações dos alunos.</p>    

                        <div class="col-md-6 col-md-offset-3">

                            <div class="panel panel-default panel-table filterable">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col col-xs-6">
                                            <h3 class="panel-title"><b>Formulário</b></h3>					 
                                        </div>                               
                                    </div>
                                </div>
                                <div class="panel-body">


                                    <form action="AlunoController.do" method="post" class="form-horizontal">
                                        <fieldset style="padding:1em;">

                                            <div class="form-group">
                                                <label class="col-sm-2 control-label" for="alunoId">Aluno ID</label> 
                                                <div class="col-sm-10"><input required type="text" readonly="readonly" placeholder="Aluno ID" name="alunoId"  class="form-control" value="<c:out value="${aluno.alunoId}" />"/></div>
                                            </div>                                            
                                            <div class="form-group"><label class="col-sm-2 control-label" for="nome">Nome</label> 
                                                <div class="col-sm-10"><input required type="text" placeholder="Nome"  name="nome"  class="form-control" value="<c:out value="${aluno.nome}"/>"/></div>
                                            </div>                                                                                                   <div class="form-group"><label class="col-sm-2 control-label" for="matric">Matrícula</label> 
                                                <div class="col-sm-10">	<input required type="text" placeholder="Matrícula" name="matric"  class="form-control" value="<c:out value="${aluno.matric}" />"/></div>
                                            </div>                                                   
                                            <div class="form-group"><label class="col-sm-2 control-label" for="curso">Curso</label> 
                                                <div class="col-sm-10">	<input required type="text" placeholder="Curso" name="curso"  class="form-control" value="<c:out value="${aluno.curso}" />"/></div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label" for="ano">Ano</label> 
                                                <div class="col-sm-10"><input required type="text" placeholder="yyyy" name="ano"  class="form-control" value="<c:out value="${aluno.ano}" />"/></div>
                                            </div>                                                     
                                            <div class="form-group"><label class="col-sm-2 control-label" for="sem">Semestre</label> 
                                                <div class="col-sm-10">	<input required type="number" min="1" max="2" placeholder="Semestre" name="sem"  class="form-control" value="<c:out value="${aluno.sem}" />"/></div>
                                            </div>                                                            
                                            <div class="form-group"><label class="col-sm-2 control-label" for="p1">P1</label>
                                                <div class="col-sm-10">	<input required type="number" min="1" max="10" placeholder="Apenas números inteiros" name="p1"  class="form-control" value="<c:out value="${aluno.p1}" />"/></div>
                                            </div>                                                               
                                            <div class="form-group"><label class="col-sm-2 control-label" for="p2">P2</label> 
                                                <div class="col-sm-10">	<input required type="number" min="1" max="10" placeholder="Apenas números inteiros" name="p2"  class="form-control" value="<c:out value="${aluno.p2}" />"/></div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-12" align="center">
                                                    <input class="btn btn-success btn-large" type="submit" value="enviar" />
                                                </div>
                                            </div>
                                        </fieldset>
                                    </form>




                                </div>

                            </div>

                        </div></div></div></div></div>


    </body>
</html>