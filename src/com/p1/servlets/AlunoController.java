package com.p1.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.p1.dao.AlunoDAO;
import com.p1.dao.AlunoDAOImplementation;
import com.p1.model.Aluno;

@WebServlet("/AlunoController")
public class AlunoController extends HttpServlet {
	
	private AlunoDAO dao;
	private static final long serialVersionUID = 1L;
	public static final String lIST_ALUNO = "/listAluno.jsp";
	public static final String INSERT_OR_EDIT = "/aluno.jsp";
       
    public AlunoController() {
    	dao = new AlunoDAOImplementation();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
            
            
            String forward = "";
		String action = request.getParameter( "action" );
		
		if( action.equalsIgnoreCase( "delete" ) ) {
			forward = lIST_ALUNO;
			int alunoId = Integer.parseInt( request.getParameter("alunoId") );
			dao.deleteAluno(alunoId);
			request.setAttribute("alunos", dao.getAllAlunos() );
		}
		else if( action.equalsIgnoreCase( "edit" ) ) {
			forward = INSERT_OR_EDIT;
			int alunoId = Integer.parseInt( request.getParameter("alunoId") );
			Aluno aluno = dao.getAlunoById(alunoId);
			request.setAttribute("aluno", aluno);
		}
		else if( action.equalsIgnoreCase( "insert" ) ) {
			forward = INSERT_OR_EDIT;
		}
		else {
			forward = lIST_ALUNO;
			request.setAttribute("alunos", dao.getAllAlunos() );
		}
		RequestDispatcher view = request.getRequestDispatcher( forward );
		view.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Aluno aluno = new Aluno();
		aluno.setMatric( request.getParameter( "matric" ) );
		aluno.setNome( request.getParameter( "nome" ) );
		aluno.setCurso( request.getParameter( "curso" ) );
		aluno.setAno( Integer.parseInt( request.getParameter( "ano" ) ) );		
                aluno.setSem( Integer.parseInt( request.getParameter( "sem" ) ) );
                aluno.setP1( Integer.parseInt( request.getParameter( "p1" ) ) );
                aluno.setP2( Integer.parseInt( request.getParameter( "p2" ) ) );
                String alunoId = request.getParameter("alunoId");
		
		if( alunoId == null || alunoId.isEmpty() ) 
			dao.addAluno(aluno);
		else {
			aluno.setAlunoId( Integer.parseInt(alunoId) );
			dao.updateAluno(aluno);
		}
		RequestDispatcher view = request.getRequestDispatcher(lIST_ALUNO );
		request.setAttribute("alunos", dao.getAllAlunos());
		view.forward(request, response);
	}
}

 