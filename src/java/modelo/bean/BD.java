package modelo.bean;

import java.util.ArrayList;

public class BD {
    public static ArrayList<Usuario> usuario = new ArrayList<>();

    public static ArrayList<Usuario> getUsuario() {
        return usuario;
    }
    
    public static ArrayList<Aluno> aluno = new ArrayList<>();

    public static ArrayList<Aluno> getAluno() {
        return aluno;
    }
    
}
