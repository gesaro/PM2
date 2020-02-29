//
//  ViewController.swift
//  communicationProtocol1
//
//  Created by txus on 24/02/2020.
//  Copyright © 2020 txus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblOptionSelected: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSendSecondController(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SelectionController") as! SelectionController
        
        vc.selectionDelegate = self
        
        present(vc, animated: true, completion: nil)
    }
    
}

extension ViewController: colorSelectedDelegate{
    func didTapColor(text: String, color: UIColor){
        lblOptionSelected.text = text
        lblOptionSelected.textColor = color
    }
}
