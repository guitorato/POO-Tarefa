<%-- 
    Document   : edit
    Created on : 07/05/2020, 13:56:45
    Author     : guih_
--%>
<%@page import="br.gov.sp.fatec.controle.db.DB"%>
<%@page import="br.gov.sp.fatec.controle.model.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String error = null;
    Cliente cliente = null;
    int i = -1;
     if(request.getParameter("i")!= null){
        i = Integer.parseInt(request.getParameter("i"));
        cliente = DB.getCliente().get(i);
        if(cliente == null){
            error = "Índice inválido!";
        }else{
            if(request.getParameter("edit")!=null){
                String name = request.getParameter("nome");
                String rg = request.getParameter("rg");
                String cpf = request.getParameter("cpf");
                String email = request.getParameter("email");
                String endereco = request.getParameter("endereco");
                String telefone = request.getParameter("telefone");
                
                if(name.isEmpty()){
                    error = "Nome inválido";
                    
                }else if(cpf.isEmpty()){
                    error = "CPF inválido";
                    
                }else if(rg.isEmpty()){
                    error = "RG inválido";
                    
                }else if(email.isEmpty()){
                    error = "Email inválido";
                    
                }else if(telefone.isEmpty()){
                    error = "Telefone inválido";
                    
                }else if(endereco.isEmpty()){
                    error = "Endereço inválido";
                    
                }else{
                        Cliente editedCliente = new Cliente();
                        editedCliente.setNome(name);
                        editedCliente.setCpf(cpf);
                        editedCliente.setRg(rg);
                        editedCliente.setEmail(email);
                        editedCliente.setTelefone(telefone);
                        editedCliente.setEndereco(endereco);
                        DB.getCliente().set(i,editedCliente);
                        response.sendRedirect("listCliente.jsp");
                    
                }
            }
        }
    }else{
        error = "Índice inválido!";
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar - Cliente</title>
    </head>
    <body>
        <h1>Editar - Cliente</h1>
        <h3><a href="../index.jsp">Início</a></h3>
        <h2><a href="listCliente.jsp">Clientes</a></h2>
        <h3>Editar</h3>
        
        <%if(error!=null){%>
        <div style="color:red"><%=error%></div>
        
        <%}else{%>
            <br/>
            <form method="post">
                <input type="hidden" name="i" value="<%=i%>"/>
                
                Nome:<br/>
                <input type="text" name="nome" value="<%=cliente.getNome()%>"/><br/>

                CPF: <br/>
                <input type="text" name="cpf" value="<%=cliente.getCpf()%>"/><br/>

                RG: <br/>
                <input type="text" name="rg" value="<%=cliente.getRg()%>"/><br/>

                Email: <br/>
                <input type="text" name="email" value="<%=cliente.getEmail()%>"/><br/>

                Telefone: <br/>
                <input type="text" name="telefone" value="<%=cliente.getTelefone()%>"/><br/>

                 Endereço <br/>
                <input type="text" name="endereco" value="<%=cliente.getEndereco()%>"/><br/>

                <input type="submit" name="edit" value="Alterar"><br/>
            </form>
        <%}%>
    </body>
</html>