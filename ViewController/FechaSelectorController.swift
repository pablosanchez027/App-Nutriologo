//
//  FechaSelectorController.swift
//  NutriologoApp
//
//  Created by Alumno on 07/05/19.
//  Copyright © 2019 Ulsa. All rights reserved.
//

import Foundation
import UIKit

class FechaSelectorController: UIViewController {
    var fechaString: String = ""
    
    @IBOutlet weak var txtFecha: UITextField!
    
    let datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showDatePicker()
    }
    
    
    func showDatePicker(){
        //Formate Date
        datePicker.datePickerMode = .date
        
        datePicker.minimumDate = Date()
        
        var sevenDaysfromNow: Date {
            return (Calendar.current as NSCalendar).date(byAdding: .day, value: 7, to: Date(), options: [])!
        }
        
        datePicker.maximumDate = sevenDaysfromNow
        
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
        
        let myCalendar = Calendar(identifier: .gregorian)
        let weekDay = myCalendar.component(.weekday, from: datePicker.date)
        var dayName:String = ""
        
        switch weekDay {
        case 1:
            dayName = "Domingo"
        case 2:
            dayName = "Lunes"
        case 3:
            dayName = "Martes"
        case 4:
            dayName = "Miércoles"
        case 5:
            dayName = "Jueves"
        case 6:
            dayName = "Viernes"
        case 7:
            dayName = "Sábado"
        default:
            dayName = "Día de la semana"
        }
        
        formatter.dateFormat = "dd"
        txtFecha.text = dayName + " " + formatter.string(from: datePicker.date)
        formatter.dateFormat = "yyyy-MM-dd"
        fechaString = formatter.string(from: datePicker.date)
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
