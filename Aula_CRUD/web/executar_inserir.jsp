<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Cliente"%>
<%@page import="dao.ClienteDAO"%>

<%
    try{
       Cliente cli = new Cliente();
       ClienteDAO cld = new ClienteDAO();
       String nome_cliente = request.getParameter("nome");
       String email = request.getParameter("email");
       String senha_cliente = request.getParameter("senha");
       
       if(nome_cliente.equals("") || email.equals("") || senha_cliente.equals("")){
           out.print("<script>alert('Campos obrigatorios!');</script>");
           response.sendRedirect("inserir.jsp");
       }else{
           cli.setNome_usuario(nome_cliente);
           cli.setEmail(email);
           cli.setSenha_usuario(senha_cliente);
           cld.inserir(cli);
           out.print("<script>alert('Cadastro efetuando com sucesso');</script>");
           out.print("<script>window.location.href='inserir.jsp';</script>");
       }
    }catch(Exception erro){
        throw new RuntimeException("ERRO 3:" +erro);
    }
    
%>