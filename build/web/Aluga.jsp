<%-- 
    Document   : Aluga
    Created on : 12/05/2021, 11:57:45
    Author     : dougl
--%>
<%@page import="javafx.scene.control.Alert"%>
<%@page import="Suporte.Veiculo" %>
<%@page import="Suporte.Locadora" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.List"%>
<%@page import = "java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  
       try{     
        String modelo, nomeCliente, valorHoraTxt;        
        int hora;        
        
        nomeCliente = request.getParameter("nome");
        modelo = request.getParameter("modelo");        
        valorHoraTxt = request.getParameter("hora");
        hora = Integer.parseInt(valorHoraTxt); 
        
        if(nomeCliente == ""){
            throw new Exception("O nome do cliente não pode estar vazio");
        }
        if(hora <1){
            throw new Exception("A hora não pode ser negativa!");
        }
        
        Locadora locadora = new Locadora(nomeCliente, hora, modelo, 75.00);
        
        Veiculo v1 = new Veiculo("Civic");
        Veiculo v2 = new Veiculo("Audi");
        Veiculo v3 = new Veiculo("HB20");        
        Veiculo v4 = new Veiculo("Fox");
        locadora.AddVeiculo(v1);
        locadora.AddVeiculo(v2);
        locadora.AddVeiculo(v3);  
        locadora.AddVeiculo(v4);
        
        out.print("Lista de carros disponíveis:<br>");
        for(Veiculo v : locadora.listaV){
            if(v.modeloCarro.contains(modelo)){
                out.print("Modelo: " + v.modeloCarro + " tem na lista!");
                
            }
            out.print("Modelo : "+ v.modeloCarro+ "<br>");             
        }   
   
       }catch(Exception e ){
          out.print(e.getMessage());
    }
  %>        
    </body>
</html>
