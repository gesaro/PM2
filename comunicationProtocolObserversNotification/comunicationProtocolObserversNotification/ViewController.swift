//
//  ViewController.swift
//  comunicationProtocolObserversNotification
//
//  Created by txus on 24/02/2020.
//  Copyright © 2020 txus. All rights reserved.
//

import UIKit

//Estos identificadores deben ser unicos para posteriormente vincularlos a un observer/observador
//Los observadores son los encargados de escuchar las notificaciones y realizar alguna tarea
let greenNotificationKey = "com.empresa.green"
let blueNotificationKey = "com.empresa.blue"
let purpleNotificationKey = "com.empresa.purple"

class ViewController: UIViewController {
    
    @IBOutlet weak var lblOption: UILabel!
    
    let green = Notification.Name(rawValue: greenNotificationKey)
    let blue = Notification.Name(rawValue: blueNotificationKey)
    let purple = Notification.Name(rawValue: purpleNotificationKey)
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //se cargan los observadores
        createObservers()
    }
    
    //Los observadores son los encargados de ejecutar las funciones necesarias para realizar los cambios/operaciones necesarias.
    func createObservers() {
        //green
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.updateText(notification:)), name: green, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.updateTextColor(notification:)), name: green, object: nil)
        
        //blue
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.updateText(notification:)), name: blue, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.updateTextColor(notification:)), name: blue, object: nil)
        
        //purple
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.updateText(notification:)), name: purple, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.updateTextColor(notification:)), name: purple, object: nil)
        
    }
    
    //Funciones ejecutadas por los observadores para realizar las modificaciones/comportamientos necesarios
    @objc func updateText(notification: NSNotification){
        let isGreen = notification.name == green
        let isBlue = notification.name == blue
        let isPurple =  notification.name == purple
        
        let text = isGreen ? "green" : (isBlue ? "blue" : (isPurple ? "purple" : "-----"))
        lblOption.text = text
    }
    
    @objc func updateTextColor(notification: NSNotification){
        let isGreen = notification.name == green
        let isBlue = notification.name == blue
        let isPurple =  notification.name == purple
        
        let color = isGreen ? UIColor.green : (isBlue ? UIColor.blue : (isPurple ? UIColor.purple : UIColor.black))
        lblOption.textColor = color
    }
    
    @IBAction func tapOption(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondController") as! SecondController
        present(vc, animated: true, completion: nil)
    }
    
}

