//
//  ViewController.swift
//  PM2_storyboardVistas
//
//  Created by Gerardo on 18/02/20.
//  Copyright © 2020 Gerardo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfdTituloPost: UITextField!
    @IBOutlet weak var tfdInformacionPost: UITextField!
    
    var titlePost = ""
    var informationPost = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendDatatoSecondViewController(_ sender: Any) {
        titlePost = tfdTituloPost.text!
        informationPost = tfdInformacionPost.text!
        
        performSegue(withIdentifier: "SecondView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! SecondViewController
        vc.labelTituloPost = titlePost
        vc.labelInformationPost = informationPost
    }
    
    


}

