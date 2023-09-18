//
//  ViewController.swift
//  quepintaraEs2
//
//  Created by CEDAM19 on 31/08/23.
//
import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var imagen: UIImageView!

    
    @IBOutlet weak var etiqueta: UILabel!
    
    
    let  listaDeElementos = [ "lajovenDelaPerla", "monalisa", "frida", "afrodita"]
    
    var elementosIndice = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        actualizaElemento()
        // Do any additional setup after loading the view.
    }


  
    @IBAction func mostrar(_ sender: Any) {
        
        etiqueta.text = listaDeElementos[elementosIndice]

    }
    
    
    @IBAction func siguiente(_ sender: Any) {
        
        elementosIndice += 1
        
        if (elementosIndice>=listaDeElementos.count){
            elementosIndice = 0
        }
        
        actualizaElemento()
    }
    
    
    func actualizaElemento(){
        etiqueta.text = "?"
        let nombreDelElemento = listaDeElementos[elementosIndice]
        let laImagen = UIImage(named: nombreDelElemento)
        imagen.image = laImagen
        
    }
    
    
    
}
