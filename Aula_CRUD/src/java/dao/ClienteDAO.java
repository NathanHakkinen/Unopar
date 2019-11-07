//classe de regras do banco de Dados
package dao;

import model.Cliente;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class ClienteDAO {
     
    private Connection conn;
    private PreparedStatement stmt;
    

    public ClienteDAO(){
        conn = new Conexao().getConexao();
    }
    //metedo de inserir dados
    public void inserir(Cliente cliente){
        String sql = "INSERT INTO tb_alunos(nome_aluno, emai_aluno, senha_aluno) VALUES (?, ?, ?)";
        
    try{
        stmt = conn.prepareStatement(sql);
         stmt.setString(1, cliente.getNome_usuario());
         stmt.setString(2, cliente.getEmail());
         stmt.setString(3, cliente.getSenha_usuario());
         stmt.execute();
         stmt.close();
    }catch(Exception erro){
        throw new RuntimeException("ERRO 2:" + erro);
    }
    }
    
    
}
