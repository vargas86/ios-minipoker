//
//  ApuestaViewController.swift
//  minipoker
//
//  Created by MacBook on 24/04/23.
//

import UIKit

class ApuestaViewController: UIViewController {
    
    var recibirApuesta: String?
    var cantidad = 0.0
    
    @IBOutlet weak var cantidadApostar: UITextField!
    @IBOutlet weak var cantidadApuestaLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(recibirApuesta!)
        cantidadApuestaLabel.text = recibirApuesta

        
    }
    
    @IBAction func confirmarApuestaButton(_ sender: Any) {
        //Mostrar en el label la cantidad ingrsada, e ir sumando
        //Validar que el usuario escriba una cantidad
        if cantidadApostar.text == "" {
            let alerta = UIAlertController(title: "Atención", message: "Necesitas ingresar una catidad", preferredStyle: .alert)
            let aceptar = UIAlertAction(title: "Aceptar" , style: .default)
            present(alerta, animated: true)
        } else {
            /// Extraer ele textoo del cantidadApostarTextField (String)
            let nuevaApuesta = cantidadApostar.text
            /// Convertirlo Double para poderlo sumar
            let apuestaDouble = Double(nuevaApuesta!) ?? 0.0
            ///  Hacer la suma con la cantidad qu se esta recibiendo / mostrando
            cantidad = cantidad + apuestaDouble
            cantidadApuestaLabel.text = "\(cantidad)"
            cantidadApostar.text = ""
            cantidadApostar.endEditing(true) //ocultar teclado
        }
        
        
        
    }
    
    @IBAction func jugarButton(_ sender: UIButton) {
        // Devolver la cantidad
    }
    
    
    
    
}
