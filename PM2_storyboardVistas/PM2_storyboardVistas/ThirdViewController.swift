//
//  ThirdViewController.swift
//  PM2_storyboardVistas
//
//  Created by Gerardo on 18/02/20.
//  Copyright © 2020 Gerardo. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    var etiquetaDesdeSecondView = ""
    
    @IBOutlet weak var lblEtiqueta: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblEtiqueta.text = etiquetaDesdeSecondView

        // Do any additional setup after loading the view.
    }


}
