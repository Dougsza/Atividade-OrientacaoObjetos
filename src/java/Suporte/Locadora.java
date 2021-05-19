/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Suporte;
import Suporte.Veiculo;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author dougl
 */
public class Locadora {
     
    //Lista de veículos
    public List<Veiculo> listaV = new ArrayList<>();   
    
    //Constructor
    public Locadora(){
        
    }

    //Métodos  
    public void AddVeiculo(Veiculo veiculo){
        listaV.add(veiculo);
    }   

}
