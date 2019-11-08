<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PÁGINA CADASTRO USUÁRIO</title>
    </head>
    <body>
        <form action="executar_inserir.jsp" method="post">
            <label>NOME</label>
            <input type="text" name="nome"/><Br>
            
             <label>EMAIL</label>
            <input type="text" name="email"/><Br>
            
             <label>SENHA   </label>
            <input type="text" name="senha"/><Br>
            
            <button type="submit">CADASTRAR</button>
        </form>
    </body>
</html>
