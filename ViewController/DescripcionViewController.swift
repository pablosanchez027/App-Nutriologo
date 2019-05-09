//
//  DescripcionViewController.swift
//  NutriologoApp
//
//  Created by Alumno on 08/05/19.
//  Copyright © 2019 Ulsa. All rights reserved.
//

import Foundation
import UIKit

class DescripcionViewController: UIViewController {
    @IBOutlet weak var txtTitulo: UILabel!
    @IBOutlet weak var txtDescripcion: UILabel!
    
    
    var dietas: Dietas?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let dietaSeleccionada = dietas {
            txtTituloDesayuno.text = dietaSeleccionada.tituloDesayuno
            txtTituloComida.text = dietaSeleccionada.tituloComida
            txtTituloCena.text = dietaSeleccionada.tituloCena
        }
    }
}
