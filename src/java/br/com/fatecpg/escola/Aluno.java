package br.com.fatecpg.escola;

import java.util.ArrayList;

public class Aluno {
    
    private int matricula;
    private String nome;
    private String curso;
    private String periodo;

    public Aluno(int matricula, String nome, String curso, String periodo) {
        this.setMatricula(matricula);
        this.setNome(nome);
        this.setCurso(curso);
        this.setPeriodo(periodo);
    }

    public int getMatricula() {
        return this.matricula;
    }

    public void setMatricula(int matricula) {
        this.matricula = matricula;
    }

    public String getNome() {
        return this.nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCurso() {
        return this.curso;
    }

    public void setCurso(String curso) {
        this.curso = curso;
    }

    public String getPeriodo() {
        return this.periodo;
    }

    public void setPeriodo(String periodo) {
        this.periodo = periodo;
    }
    
    public static ArrayList<Aluno> getAlunos() throws Exception {
        String SQL = "SELECT * FROM aluno";
        ArrayList<Aluno> alunos = new ArrayList<>();
        ArrayList<Object[]> list = DatabaseConnector.getQuery(SQL, new Object[]{});
        for (int i = 0; i < list.size(); i++) {
            Object row[] = list.get(i);
            Aluno c = new Aluno((int) row[0], (String) row[1], (String) row[2], (String) row[3]);
            alunos.add(c);
        }
        return alunos;
    }
    
    public static void add(String nome, String curso, String periodo) throws Exception {
        String SQL = "INSERT INTO aluno VALUES (default, ? , ?, ?)";
        Object parameters[] = {nome, curso, periodo};
        DatabaseConnector.execute(SQL, parameters);
    }

    public static void remove(long id) throws Exception {
        String SQL = "DELETE FROM USERS WHERE ID = ?";
        Object parameters[] = {id};
        DatabaseConnector.execute(SQL, parameters);
    }

}