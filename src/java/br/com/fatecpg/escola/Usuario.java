package br.com.fatecpg.escola;

import java.util.ArrayList;

public class Usuario {

    private int id;
    private String login;
    private String senha;

    public Usuario(int id, String login, String senha) {
        this.id = id;
        this.login = login;
        this.senha = senha;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public static ArrayList<Usuario> getUsuarios() throws Exception {
        String SQL = "SELECT * FROM usuario";
        ArrayList<Usuario> usuarios = new ArrayList<>();
        ArrayList<Object[]> list = DatabaseConnector.getQuery(SQL, new Object[]{});
        for (int i = 0; i < list.size(); i++) {
            Object row[] = list.get(i);
            Usuario u = new Usuario((int) row[0], (String) row[1], (String) row[2]);
            usuarios.add(u);
        }
        return usuarios;
    }
    
    public static Usuario getUsuario(int id) throws Exception {
        String SQL = "SELECT * FROM usuario WHERE id = ?";
        Object parameters[] = {id};
        ArrayList<Object[]> list = DatabaseConnector.getQuery(SQL, parameters);
        if (list.isEmpty()){
            return null;
        } else {
            Object row[] = list.get(0);
            Usuario u = new Usuario((int) row[0], (String) row[1], (String) row[2]);
            return u;
        }
    }

    public static void add(String login, String senha) throws Exception {
        String SQL = "INSERT INTO usuario VALUES (default, ? , ?)";
        Object parameters[] = {login, senha};
        DatabaseConnector.execute(SQL, parameters);
    }
    
    public static void edit(int id, String login, String senha) throws Exception {
        String SQL = "UPDATE usuario SET login = ?, senha = ? WHERE id = ?";
        Object parameters[] = {login, senha, id};
        DatabaseConnector.execute(SQL, parameters);
    }

    public static void remove(long id) throws Exception {
        String SQL = "DELETE FROM usuario WHERE id = ?";
        Object parameters[] = {id};
        DatabaseConnector.execute(SQL, parameters);
    }

    public static Usuario checkLogin(String login, String senha) throws Exception {
        String SQL = "SELECT * FROM usuario WHERE login = ? AND senha = ?";
        Object parameters[] = {login, senha};
        ArrayList<Object[]> list = DatabaseConnector.getQuery(SQL, parameters);
        if (list.isEmpty()){
            return null;
        } else {
            Object row[] = list.get(0);
            Usuario u = new Usuario((int) row[0], (String) row[1], (String) row[2]);
            return u;
        }
    }

}