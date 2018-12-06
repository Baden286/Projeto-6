package br.com.fatecpg.escola;

import java.util.ArrayList;

public class Curso {

    private long id;
    private String nome;
    private String sigla;

    public Curso(long id, String nome, String sigla) {
        this.id = id;
        this.nome = nome;
        this.sigla = sigla;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSigla() {
        return sigla;
    }

    public void setSigla(String sigla) {
        this.sigla = sigla;
    }
    
    public static ArrayList<Curso> getCursos() throws Exception {
        String SQL = "SELECT * FROM CURSOS";
        ArrayList<Curso> cursos = new ArrayList<>();
        ArrayList<Object[]> list = DatabaseConnector.getQuery(SQL, new Object[]{});
        for (int i = 0; i < list.size(); i++) {
            Object row[] = list.get(i);
            Curso c = new Curso((long) row[0], (String) row[1], (String) row[2]);
            cursos.add(c);
        }
        return cursos;
    }

    public static void add(String nome, String sigla) throws Exception {
        String SQL = "INSERT INTO USERS VALUES (default, ? , ?)";
        Object parameters[] = {nome, sigla};
        DatabaseConnector.execute(SQL, parameters);
    }

    public static void remove(long id) throws Exception {
        String SQL = "DELETE FROM USERS WHERE ID = ?";
        Object parameters[] = {id};
        DatabaseConnector.execute(SQL, parameters);
    }

}
