//
//  Dieta.swift
//  NutriologoApp
//
//  Created by Alumno on 07/05/19.
//  Copyright © 2019 Ulsa. All rights reserved.
//

import Foundation
import UIKit

class Dieta {
    var tituloDesayuno : String = ""
    var tituloComida : String = ""
    var tituloCena : String = ""
    
    var descripcionDesayuno : String = ""
    var descripcionComida : String = ""
    var descripcionCena : String = ""
    
    init(tituloDesayuno : String, tituloComida : String, tituloCena : String, descripcionDesayuno : String, descripcionComida : String, descripcionCena : String) {
        self.tituloDesayuno = tituloDesayuno
        self.tituloComida = tituloComida
        self.tituloCena = tituloCena
        
        self.descripcionDesayuno = descripcionDesayuno
        self.descripcionComida = descripcionComida
        self.descripcionCena = descripcionCena
    }
}
