//
//  DietaDetalleController.swift
//  NutriologoApp
//
//  Created by Alumno on 07/05/19.
//  Copyright © 2019 Ulsa. All rights reserved.
//

import Foundation
import UIKit

class DietaDetalleController: UIViewController {
    @IBOutlet weak var txtTituloDesayuno: UILabel!
    @IBOutlet weak var txtTituloComida: UILabel!
    @IBOutlet weak var txtTituloCena: UILabel!
    @IBOutlet weak var txtDescripcionDesayuno: UILabel!
    @IBOutlet weak var txtDescripcionComida: UILabel!
    @IBOutlet weak var txtDescripcionCena: UILabel!
    
    var dieta : Dieta?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let dietaSeleccionada = dieta {
            txtTituloDesayuno.text = dietaSeleccionada.tituloDesayuno
            txtTituloComida.text = dietaSeleccionada.tituloComida
            txtTituloCena.text = dietaSeleccionada.tituloCena
            txtDescripcionDesayuno.text = dietaSeleccionada.descripcionDesayuno
            txtDescripcionComida.text = dietaSeleccionada.descripcionComida
            txtDescripcionCena.text = dietaSeleccionada.descripcionCena
        }
    }
}
