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
    
    @IBAction func btnDesayuno(_ sender: Any) {
        performSegue(withIdentifier: "goToDescripcion", sender: self)
    }
    @IBAction func btnComida(_ sender: Any) {
        performSegue(withIdentifier: "goToDescripcion", sender: self)
    }
    @IBAction func btnCena(_ sender: Any) {
        performSegue(withIdentifier: "goToDescripcion", sender: self)
    }
    
}
