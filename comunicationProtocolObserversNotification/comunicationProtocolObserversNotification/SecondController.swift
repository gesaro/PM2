//
//  SecondController.swift
//  comunicationProtocolObserversNotification
//
//  Created by txus on 24/02/2020.
//  Copyright © 2020 txus. All rights reserved.
//

import UIKit

class SecondController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapGreenButton(_ sender: Any) {
        
        //Se enviará la notificación de que algo ha cambiado para que el observador pueda realizar la accion necesaria
        let name = Notification.Name(rawValue: greenNotificationKey)
        NotificationCenter.default.post(name: name, object: nil)
        
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func tapBlueButton(_ sender: Any) {
        
        //Se enviará la notificación de que algo ha cambiado para que el observador pueda realizar la accion necesaria
        let name = Notification.Name(rawValue: blueNotificationKey)
        NotificationCenter.default.post(name: name, object: nil)
        
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func tapPurpleButton(_ sender: Any) {
        
        //Se enviará la notificación de que algo ha cambiado para que el observador pueda realizar la accion necesaria
        let name = Notification.Name(rawValue: purpleNotificationKey)
        NotificationCenter.default.post(name: name, object: nil)
        
        
        dismiss(animated: true, completion: nil)
    }
}
