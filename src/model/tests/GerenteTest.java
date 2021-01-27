package model.tests;

import model.Gerente;

public class GerenteTest {
    public static void main(String[] args) {
        Gerente gerente = new Gerente("Pedro","3222-2861","pedro@gmail.com","10981231",
                "Rua das ameixas","981","","MG","Juiz de Fora","123");

        System.out.println(gerente);
    }
}
