<%-- 
    Document   : aluga
    Created on : 18/05/2021, 17:28:21
    Author     : dougl
--%>
<%@page import="Suporte.Veiculo" %>
<%@page import="Suporte.Aluguel" %>
<%@page import="Suporte.Locadora" %>
<%@page import = "java.util.List"%>
<%@page import = "java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>        
        <%
        try{
            //Variáveis
            String modelo, nomeCliente, valorHoraTxt;        
            int hora;        
            //Pega os dados que o usuário digitou e coloca nas variáveis
            nomeCliente = request.getParameter("nome");
            modelo = request.getParameter("modelo").toUpperCase();        
            valorHoraTxt = request.getParameter("hora");
            hora = Integer.parseInt(valorHoraTxt);
            
            List minhalista = (ArrayList)request.getAttribute("listaCarros");
        
            //Envia uma excessão
            if(nomeCliente == ""){
                throw new Exception("O nome do cliente não pode estar vazio");
            }
            if(hora <1){
                throw new Exception("A hora não pode ser negativa!");
            }
            
            Aluguel aluguel = new Aluguel(nomeCliente, hora, modelo, 75.00);
            aluguel.valorHora(); 
            
        }catch(Exception e){
            out.print(e.getMessage());
        }
        %>
    </body>
</html>
