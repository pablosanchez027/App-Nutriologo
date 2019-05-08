//
//  FechaSelectorController.swift
//  NutriologoApp
//
//  Created by Alumno on 07/05/19.
//  Copyright © 2019 Ulsa. All rights reserved.
//

import Foundation
import UIKit

class FechaSelectorController : UIViewController {
    @IBOutlet weak var txtFecha: UITextField!
    
    let datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showDatePicker()
    }
    
    
    func showDatePicker(){
        //Formate Date
        datePicker.datePickerMode = .date
        
        //ToolBar
        let toolbar = UIToolbar();
        toolbar.sizeToFit()
        let aceptarBoton = UIBarButtonItem(title: "Aceptar", style: .plain, target: self, action: #selector(AceptarDatePicker));
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
        let cancelarButton = UIBarButtonItem(title: "Cancelar", style: .plain, target: self, action: #selector(CancelarDatePicker));
        
        toolbar.setItems([cancelarButton,spaceButton,aceptarBoton], animated: false)
        
        txtFecha.inputAccessoryView = toolbar
        txtFecha.inputView = datePicker
        
    }
    
    @objc func AceptarDatePicker(){
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        txtFecha.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
    
    @objc func CancelarDatePicker(){
        self.view.endEditing(true)
    }
    
    @IBAction func doTapConsultar(_ sender: Any) {
        //Enviar fecha para consulta
        performSegue(withIdentifier: "goToDieta", sender: self)
    }
    
}
