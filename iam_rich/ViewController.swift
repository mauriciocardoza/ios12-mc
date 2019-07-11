//
//  ViewController.swift
//  iam_rich
//
//  Created by Carlos M. Cardoza on 7/6/19.
//  Copyright © 2019 infinite. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imagecontrol: UIImageView!
    @IBOutlet weak var labelRich: UILabel!
    
    @IBAction func Bclic(_ sender: UIButton) {
        
        let alertcontroll = UIAlertController(title:"I'am Rich", message: """
salud
dinero
amor
""", preferredStyle: .alert)
        let action_alert = UIAlertAction(title: "Ok", style:.default, handler: {(action_alert) in
            print("Ejecutando")
            if (self.labelRich.text == "I'am Rich") {
             self.labelRich.text = "Felicidades, eres rico";
            self.imagecontrol.image = UIImage(named: "smiley")
             } else {
               self.labelRich.text = "I'am Rich"
              self.imagecontrol.image = UIImage(named: "diamond")
             }
        })
        
        alertcontroll.addAction(action_alert)
        self.show(alertcontroll, sender: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }


}

