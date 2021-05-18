/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Suporte;

/**
 *
 * @author dougl
 */
public class Aluguel {
        
 //Variáveis
    public int hora;    
    public double valorPHora;    
    public String modelo;
    public String nomeCliente;
    public double valorModelo;
   
    public Aluguel(String nomeCliente, int hora, String modelo, double valorModelo){
        this.nomeCliente = nomeCliente;
        this.hora = hora;
        this.modelo = modelo;
        this.valorModelo = valorModelo;
    } 
    
    public void valorHora(){
        valorPHora = valorModelo * hora;        
   
    }

}
