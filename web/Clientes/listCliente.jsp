<%-- 
    Document   : list
    Created on : 07/05/2020, 11:15:39
    Author     : guih_
--%>

<%@page import="br.gov.sp.fatec.controle.db.DB"%>
<%@page import="br.gov.sp.fatec.controle.model.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Clientes</title>
    </head>
    <body>
        <h1>Lista - Clientes</h1>
        <h2><a href="../index.jsp">Inicio</a></h2>
        <h3>Lista</h3>
        <h4><a href="newCliente.jsp">Adicionar Novo Cliente</a></h4>
        <table border="1">
            <tr>
                <th>Nome</th>
                <th>CPF</th>
                <th>RG</th>
                <th>Email</th>
                <th>Telefone</th>
                <th>Endereço</th>
                <th>Comandos</th>
            </tr>
            <%for(Cliente cliente : DB.getCliente()){%>
            <tr>
                <td><%=cliente.getNome()%></td>
                <td><%=cliente.getRg()%></td>
                <td><%=cliente.getCpf()%></td>
                <td><%=cliente.getEmail()%></td>
                <td><%=cliente.getTelefone()%></td>
                <td><%=cliente.getEndereco()%></td>
                <td>
                    <% int i = DB.getCliente().indexOf(cliente);%>
                    <a href="editCliente.jsp?i=<%=i%>">Alterar</a>
                </td>
                <td><a href="deleteCliente.jsp?i=<%=i%>">Excluir</a></td>
            </tr>
            <%}%>
        </table>
</html>
