/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.gov.sp.fatec.controle.db;

import br.gov.sp.fatec.controle.model.Cliente;
import br.gov.sp.fatec.controle.model.Fornecedor;
import java.util.ArrayList;

/**
 *
 * @author re039859
 */
public class DB {
     
    
    //Clientes
    private static ArrayList<Cliente> clientes;
    public static ArrayList<Cliente> getCliente(){
        if (clientes == null ){
            clientes = new ArrayList<>();
            
            Cliente cliente = new Cliente();
            cliente.setNome("Ze das Couves");
            cliente.setCpf("999.888.777-66");
            cliente.setRg("1111111111");
            cliente.setEmail("email@email.com");
            cliente.setEndereco("Rua A , 90 - PG");
            cliente.setTelefone("13 3333-3333");
            clientes.add(cliente);
            
            Cliente cliente2 = new Cliente();
            cliente2.setNome("Ze Ruela");
            cliente2.setCpf("111.222.333-44");
            cliente2.setRg("1111111111");
            cliente2.setEmail("ze@email.com");
            cliente2.setEndereco("Rua b , 90 - PG");
            cliente2.setTelefone("11 2222-3333");
            clientes.add(cliente2);
        }
        return clientes;
    }
    
    //fornecedores
    private static ArrayList<Fornecedor> fornecedores;
    public static ArrayList<Fornecedor> getFornecedor(){
        if (fornecedores == null ){
            fornecedores = new ArrayList<>();
            
            Fornecedor fornecedor = new Fornecedor();
            fornecedor.setNome("ABB ");
            fornecedor.setRazao("ABB tecnologia");
            fornecedor.setCnpj("123.456.789/0001-00");
            fornecedor.setEmail("abb@abb.com");
            fornecedor.setEndereco("Porto da Desgraça");
            fornecedores.add(fornecedor);
            
            
            Fornecedor fornecedor2 = new Fornecedor();
            fornecedor2.setNome("ZYZ ");
            fornecedor2.setRazao("XYZ destecnologia");
            fornecedor2.setCnpj("999.888.777/0001-00");
            fornecedor2.setEmail("xyz@sem-email.com");
            fornecedor2.setEndereco("Porto ");
            fornecedores.add(fornecedor2);
            
            
        }
        return fornecedores;
    }
    
}
