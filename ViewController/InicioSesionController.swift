//
//  InicioSesionController.swift
//  NutriologoApp
//
//  Created by Alumno on 07/05/19.
//  Copyright © 2019 Ulsa. All rights reserved.
//

import Foundation
import UIKit

class InicioSesionController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var txtCorreo: UITextField!
    @IBOutlet weak var txtContra: UITextField!
    @IBOutlet weak var lblAviso: UILabel!
    
    
    @IBAction func doTapEntrar(_ sender: Any) {
        if txtCorreo.text != nil && txtCorreo.text != "" && txtContra.text != nil && txtContra.text != "" {
            //Validación
            performSegue(withIdentifier: "goToEntrar", sender: self)
        } else {
            //No pasó
            lblAviso.isHidden = false
        }
    }
    
}
