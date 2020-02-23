//
//  SecondViewController.swift
//  PM2_storyboardVistas
//
//  Created by Gerardo on 18/02/20.
//  Copyright © 2020 Gerardo. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var _etiqueta = ""
    
    @IBOutlet weak var lblTituloPost: UILabel!
    @IBOutlet weak var lblInformationPost: UILabel!
    
    @IBOutlet weak var tfdDato: UITextField!
    
    var labelTituloPost = ""
    var labelInformationPost = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        lblTituloPost.text = labelTituloPost
        lblInformationPost.text = labelInformationPost
    }
    
    
    @IBAction func sendDatoThirdViewController(_ sender: Any) {
        self._etiqueta = tfdDato.text!
        performSegue(withIdentifier: "ThirdView", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ThirdViewController
        vc.etiquetaDesdeSecondView = self._etiqueta
    }

}
