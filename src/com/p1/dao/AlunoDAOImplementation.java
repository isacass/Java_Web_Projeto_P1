package com.p1.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.p1.model.Aluno;
import com.p1.util.DBUtil;

public class AlunoDAOImplementation implements AlunoDAO {
	
	private Connection conn;

	public AlunoDAOImplementation() {
		conn = DBUtil.getConnection();
	}
	@Override
	public void addAluno( Aluno aluno ) {
		try {
			String query = "insert into aluno (matric, nome, curso, ano, sem, p1, p2) values (?,?,?,?,?,?,?)";
			PreparedStatement preparedStatement = conn.prepareStatement( query );
			preparedStatement.setString( 1, aluno.getMatric() );
			preparedStatement.setString( 2, aluno.getNome() );
			preparedStatement.setString( 3, aluno.getCurso() );
			preparedStatement.setInt( 4, aluno.getAno() );
			preparedStatement.setInt( 5, aluno.getSem() );
			preparedStatement.setInt( 6, aluno.getP1() );
			preparedStatement.setInt( 7, aluno.getP2() );
			preparedStatement.executeUpdate();
			preparedStatement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	@Override
	public void deleteAluno( int alunoId ) {
		try {
			String query = "delete from aluno where alunoId=?";
			PreparedStatement preparedStatement = conn.prepareStatement(query);
			preparedStatement.setInt(1, alunoId);
			preparedStatement.executeUpdate();
			preparedStatement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	@Override
	public void updateAluno( Aluno aluno ) {
		try {
			String query = "update aluno set matric=?, nome=?, curso=?, ano=?, sem=?, p1=?, p2=? where alunoId=?";
			PreparedStatement preparedStatement = conn.prepareStatement( query );
			preparedStatement.setString( 1, aluno.getMatric() );
			preparedStatement.setString( 2, aluno.getNome() );
			preparedStatement.setString( 3, aluno.getCurso() );
			preparedStatement.setInt( 4, aluno.getAno() );			
			preparedStatement.setInt(5, aluno.getSem());
			preparedStatement.setInt(6, aluno.getP1());
			preparedStatement.setInt(7, aluno.getP2());
                        preparedStatement.setInt(8, aluno.getAlunoId());
			preparedStatement.executeUpdate();
			preparedStatement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	@Override
	public List<Aluno> getAllAlunos() {
		List<Aluno> alunos = new ArrayList<Aluno>();
		try {
			Statement statement = conn.createStatement();
			ResultSet resultSet = statement.executeQuery( "select * from aluno" );
			while( resultSet.next() ) {
				Aluno aluno = new Aluno();
				aluno.setAlunoId( resultSet.getInt( "alunoId" ) );
				aluno.setMatric( resultSet.getString( "matric" ) );
				aluno.setNome( resultSet.getString( "nome" ) );
				aluno.setCurso( resultSet.getString( "curso" ) );
				aluno.setAno( resultSet.getInt( "ano" ) );
				aluno.setSem( resultSet.getInt( "sem" ) );
				aluno.setP1( resultSet.getInt( "p1" ) );
				aluno.setP2( resultSet.getInt( "p2" ) );
				alunos.add(aluno);
			}
			resultSet.close();
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return alunos;
	}
	@Override
	public Aluno getAlunoById(int alunoId) {
		Aluno aluno = new Aluno();
		try {
			String query = "select * from aluno where alunoId=?";
			PreparedStatement preparedStatement = conn.prepareStatement( query );
			preparedStatement.setInt(1, alunoId);
			ResultSet resultSet = preparedStatement.executeQuery();
			while( resultSet.next() ) {
				aluno.setAlunoId( resultSet.getInt( "alunoId" ) );
				aluno.setMatric( resultSet.getString( "matric" ) );
				aluno.setNome( resultSet.getString( "Nome" ) );
				aluno.setCurso( resultSet.getString( "curso" ) );
				aluno.setAno( resultSet.getInt( "ano" ) );
				aluno.setSem( resultSet.getInt( "sem" ) );
				aluno.setP1( resultSet.getInt( "p1" ) );
				aluno.setP2( resultSet.getInt( "p2" ) );
			}
			resultSet.close();
			preparedStatement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return aluno;
	}

}