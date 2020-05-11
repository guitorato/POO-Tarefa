<%-- 
    Document   : newjsp
    Created on : 11/05/2020, 14:23:31
    Author     : re039859
--%>

<%@page import="br.gov.sp.fatec.controle.db.DB"%>
<%@page import="br.gov.sp.fatec.controle.model.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String error = null;
    
    if(request.getParameter("add") != null){
         
         String nome = request.getParameter("nome");
         String rg = request.getParameter("rg");
         String cpf = request.getParameter("cpf");
         String email = request.getParameter("email");
         String telefone = request.getParameter("telefone");
         String endereco = request.getParameter("endereco");
         
            if(nome.isEmpty()){
                    error = "Nome inválido";
            }else if(rg.isEmpty()){
                    error = "Email inválido";
            }else if(cpf.isEmpty()){
                    error = "Email inválido";
            }else if(email.isEmpty()){
                    error = "Email inválido";
            }else if(telefone.isEmpty()){
                    error = "Email inválido";
             }else if(endereco.isEmpty()){
                    error = "Endereço inválido";
             }else{
                Cliente cliente = new Cliente();
                cliente.setNome(nome);
                cliente.setRg(rg);
                cliente.setCpf(cpf);
                cliente.setEmail(email);
                cliente.setTelefone(telefone);
                cliente.setEndereco(endereco);
                DB.getCliente().add(cliente);
                response.sendRedirect("listCliente.jsp");
            }
        }
    
%>
<html>
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novo - ClIENTE</title>
    </head>
    <body>
        <h1>Novo - Cliente</h1>
        <h2><a href="listCliente.jsp">Clientes</a></h2>
        <h3>Novo - Cliente</h3>
      <%if(error!=null){%>
       <div style="color: red"><%= error%></div>
       <%}%>
        <form method="post">
            
            <label>Nome:</label><br />
            <input type="text" name="nome" /><br />
           
            <label>CPF:</label><br />
            <input type="text" name="cpf" /><br />
            
            <label>RG:</label><br />
            <input type="text" name="rg" /><br />
            
            <label>Email:</label><br />
            <input type="text" name="email" /><br />
            
            <label>Telefone:</label><br />
            <input type="text" name="telefone" /><br />
            
            <label>Endereço</label><br />
            <input type="text" name="endereco" /><br />
         
            <br />
            <input type="submit" name="add" value="Adicionar"/><br />
            
        </form>
    </body>
</html>
