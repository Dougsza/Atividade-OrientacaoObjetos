/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Suporte;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author dougl
 */
public class Locadora {
    //Variáveis
    public int hora;    
    public double valorPHora;    
    public double valorModelo;
    public String nomeCliente;
    public String modeloCarro;
    
    //Lista de veículos
    public List<Veiculo> listaV = new ArrayList<>();
    
    public String resultado;
//Construtor   
public Locadora(String nomeCliente,int hora, String modeloCarro, double valorAluguel){
    this.nomeCliente = nomeCliente;
    this.hora = hora;
    this.modeloCarro = modeloCarro;
    valorModelo = valorAluguel;
}
 //Métodos   
public void valorHora(){
    valorPHora = valorModelo * hora;        
   
}

public void AddVeiculo(Veiculo veiculo){
    listaV.add(veiculo);
  }

}
