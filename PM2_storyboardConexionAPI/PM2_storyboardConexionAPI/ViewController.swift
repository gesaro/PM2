//
//  ViewController.swift
//  PM2_storyboardConexionAPI
//
//  Created by Gerardo on 19/02/20.
//  Copyright © 2020 Gerardo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfdTituloPost: UITextField!
    @IBOutlet weak var tfdInformation: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sendDataToServer(_ sender: Any) {
        let alert = UIAlertController(title: "enviar datos", message: "Se enviara la informacion al servidor", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {
            action in
            guard let title = self.tfdTituloPost.text else {print("No hay un titulo valido"); return}
            guard let information = self.tfdTituloPost.text else {print("No hay informacion valida"); return}
            
            let datos = Datos(title: title, information: information)
            let postRequest = APIRequest(endpoint: "post")
            postRequest.save(datos, completion: { result in
                switch result{
                    case .success(let datos):
                        print("El siguiente mensaje ha sido enviado titulo:\(datos.post_title)\n informacion:\(datos.information)")
                    case .failure(let err):
                        print("Ocurrio un error: \(err)")
                }
            })
        }))
        self.present(alert, animated: true)
    }
    

}

