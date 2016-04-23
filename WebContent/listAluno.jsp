<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        
        <title>Lista de Alunos</title>

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
                        <h2>Relação de Alunos</h2>
                        <p>Lista das informações.</p>    

                        <div class="col-md-10 col-md-offset-1">

                            <div class="panel panel-default panel-table filterable">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col col-xs-6">
                                            <h3 class="panel-title"><b>Lista de Alunos</b></h3>					 
                                        </div>
                                        <div class="col col-xs-6 text-right">
                                            <a href="AlunoController.do?action=list"type="button" class="btn btn-sm btn-primary btn-create"><span class="glyphicon glyphicon-list"></span> Listar Alunos</a>
                                            <a href="AlunoController.do?action=insert" type="button" class="btn btn-sm btn-primary btn-create"><span class="glyphicon glyphicon-plus"></span> Novo Aluno</a>
                                            <button class="btn btn-default btn-filter"><span class="glyphicon glyphicon-filter"></span> Filtrar</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <table class="table table-striped table-bordered table-list">
                                        <thead>
                                            <tr class="filters">                                        
                                                <th><input type="text" class="form-control" placeholder="#" disabled></th>
                                                <th><input type="text" class="form-control" placeholder="Matrícula" disabled></th>
                                                <th><input type="text" class="form-control" placeholder="Nome" disabled></th>
                                                <th><input type="text" class="form-control" placeholder="Curso" disabled></th>
                                                <th><input type="text" class="form-control" placeholder="Ano" disabled></th>
                                                <th><input type="text" class="form-control" placeholder="Semestre" disabled></th>
                                                <th><input type="text" class="form-control" placeholder="P1" disabled></th>
                                                <th><input type="text" class="form-control" placeholder="P2" disabled></th>                                              
                                                <th><em class="glyphicon glyphicon-cog"></em></th><th><em class="glyphicon glyphicon-cog"></em></th>
                                                

                                            </tr>
                                        </thead>
                                                                
                                        <tbody>                                
                                            <c:forEach items="${alunos}" var="aluno">
                                                <tr>

                                                    <td class="hidden-xs"><c:out value="${aluno.alunoId}" /></td>
                                                    <td><c:out value="${aluno.matric}" /></td>
                                                    <td><c:out value="${aluno.nome}" /></td>
                                                    <td><c:out value="${aluno.curso}" /></td>                                                    
                                                    <td><c:out value="${aluno.ano}" /></td>
                                                    <td><c:out value="${aluno.sem}" /></td>
                                                    <td><c:out value="${aluno.p1}" /></td>
                                                    <td><c:out value="${aluno.p2}" /></td>                                                                                                      
                                                    <td><a class="btn btn-default" href="AlunoController.do?action=edit&alunoId=<c:out value="${aluno.alunoId }"/>"><em class="glyphicon glyphicon-pencil"></em></a></td>
                                                    <td><a class="btn btn-danger" href="AlunoController.do?action=delete&alunoId=<c:out value="${aluno.alunoId }"/>"><em class="glyphicon glyphicon-trash"></em></a></td>

                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                     
                                </div>
                                <div class="panel-footer">
                                    <div class="row">
                                        <div class="col col-xs-4">Página 1 de 1
                                        </div>                 
                                    </div>
                                </div>
                            </div>

                        </div></div></div></div></div>

        <script>
            $(document).ready(function () {
                $('.filterable .btn-filter').click(function () {
                    var $panel = $(this).parents('.filterable'),
                            $filters = $panel.find('.filters input'),
                            $tbody = $panel.find('.table tbody');
                    if ($filters.prop('disabled') == true) {
                        $filters.prop('disabled', false);
                        $filters.first().focus();
                    } else {
                        $filters.val('').prop('disabled', true);
                        $tbody.find('.no-result').remove();
                        $tbody.find('tr').show();
                    }
                });

                $('.filterable .filters input').keyup(function (e) {
                    /* Ignore tab key */
                    var code = e.keyCode || e.which;
                    if (code == '9')
                        return;
                    /* Useful DOM data and selectors */
                    var $input = $(this),
                            inputContent = $input.val().toLowerCase(),
                            $panel = $input.parents('.filterable'),
                            column = $panel.find('.filters th').index($input.parents('th')),
                            $table = $panel.find('.table'),
                            $rows = $table.find('tbody tr');
                    /* Dirtiest filter function ever ;) */
                    var $filteredRows = $rows.filter(function () {
                        var value = $(this).find('td').eq(column).text().toLowerCase();
                        return value.indexOf(inputContent) === -1;
                    });
                    /* Clean previous no-result if exist */
                    $table.find('tbody .no-result').remove();
                    /* Show all rows, hide filtered ones (never do that outside of a demo ! xD) */
                    $rows.show();
                    $filteredRows.hide();
                    /* Prepend no-result row if all rows are filtered */
                    if ($filteredRows.length === $rows.length) {
                        $table.find('tbody').prepend($('<tr class="no-result text-center"><td colspan="' + $table.find('.filters th').length + '">Nenhum Resultado Encontrado!</td></tr>'));
                    }
                });
            });
        </script>
    </body>
</html>