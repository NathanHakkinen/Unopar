package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {
    //metodo para realizar a conexao do banco  
    
    public Connection getConexao(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection("jdb:mysql://localhost:3307/unopar","root","");
        }catch(Exception erro){
            throw new RuntimeException("ERRO I:"+erro);
        }
    }
    
    
}
