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
        <title>Lista</title>
    </head>
    <body>
        <%  
       //Tratamento de erro     
       try{ 
           
        //Instanciando e colocando os parâmetros na classe Locadora
        Locadora locadora = new Locadora();
        
        //Instanciando os veículos
        Veiculo v1 = new Veiculo("CIVIC");
        Veiculo v2 = new Veiculo("AUDI");
        Veiculo v3 = new Veiculo("HB20");        
        Veiculo v4 = new Veiculo("FOX");
        
        //Adicionando os veículos no método da classe locadora
        locadora.AddVeiculo(v1);
        locadora.AddVeiculo(v2);
        locadora.AddVeiculo(v3);  
        locadora.AddVeiculo(v4);
        request.setAttribute("listaCarros", locadora.listaV);
        
        //Lista de veículos disponíveis 
        out.print("Lista de carros disponíveis:<br>");
        for(Veiculo v : locadora.listaV){
            out.print("Modelo: " +v.modeloCarro + "<br>"); 
        }      

       }catch(Exception e ){
          
          out.print(e.getMessage());
    }
        %>
   
    </body>
</html>
