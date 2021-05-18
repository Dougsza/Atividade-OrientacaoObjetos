<%-- 
    Document   : index
    Created on : 12/05/2021, 10:09:22
    Author     : dougl
--%>
<%@page import ="Suporte.Veiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Aluguel de carros</title>
    </head>
    <body>
        <div>
            <form action="Aluga.jsp" method="get" target="result">
                <h1>Aluguel de carros!</h1>
                <p>Bem vindo a um teste de aluguel de carros, para alugar um automóvel digite o seu <strong>nome</strong><br> 
                    e quantas <strong>horas</strong> deseja alugar um carro.</p>
                <br>
                Nome:<br><input type="text" name="nome" placeholder="Digite o seu nome"><br>
                <br>
                Hora:<br><input type="number" name="hora" placeholder="Digite quantas horas">
                <br><br>
                Modelo do Carro:<br><input type="text" name="modelo" placeholder="Digite o modelo do carro"> 
                
                <input type="submit" name="enviar" value="Buscar">
           </form>             
        </div>
        <br>
        <div id="retorno">
            <iframe name="result" width="300" height="100">
                
            </iframe>
            
        </div>    
    </body>
</html>
