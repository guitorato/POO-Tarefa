<%-- 
    Document   : delete
    Created on : 08/05/2020, 19:14:54
    Author     : guih_
--%>

<%@page import="br.gov.sp.fatec.controle.model.Cliente"%>
<%@page import="br.gov.sp.fatec.controle.db.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String error = null;
    Cliente cliente = null;
    int i = -1;
    if(request.getParameter("i") != null){
        i = Integer.parseInt(request.getParameter("i"));
        cliente = DB.getCliente().get(i);
        if(cliente == null){
            error = "Índice inválido!";
        }else{
            if(request.getParameter("delete")!=null){      
                DB.getCliente().remove(i);
                response.sendRedirect("listCliente.jsp");
            }
        }
    }else{
        error = "Índice inválido!";
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir - Cliente</title>
    </head>
    <body>
        <h1>Excluir - Cliente</h1>
        <h3><a href="../index.jsp">Início</a></h3>
        <h3><a href="list.jsp">Cliente</a></h3>
        <h3>Excluir</h3>
        <%if(error!=null){%>
        <div style="color:red"><%=error%></div>
        <%}else{%>
        <br/>
        <form method="post">
            <input type="hidden" name="i" value="<%=i%>"/>
            
            Nome:<br/>
            <b><%=cliente.getNome()%></b><br/>
            
            RG: <br/>
            <b><%=cliente.getRg()%>"</b><br/>
            
            CPF: <br/>
            <b><%=cliente.getCpf()%>"</b><br/>
            
            Email: <br/>
            <b><%=cliente.getEmail()%>"</b><br/>
            
            Telefone: <br/>
            <b><%=cliente.getTelefone()%>"</b><br/>
            
            Endereço: <br/>
            <b><%=cliente.getEndereco()%>"</b><br/>
            
            
            <br/>
            <input type="submit" name="delete" value="Excluir"><br/>
        </form>
        <%}%>
    </body>
</html>
