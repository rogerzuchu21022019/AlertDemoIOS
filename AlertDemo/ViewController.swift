//
//  ViewController.swift
//  AlertDemo
//
//  Created by Vu Thanh Nam on 20/05/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    @IBAction func Press(_ sender: UIButton) {
        let alert = UIAlertController(title: "Alert", message: "Choose", preferredStyle: .alert)
        let actionAgree1 = UIAlertAction(title: "Agree1", style: .default){(action) in
            self.myLabel.text = "Agree"
        }
        let actionAgree2 = UIAlertAction(title: "Agree2", style: .destructive){(action) in
            self.myLabel.text = "Agree"
        }
        
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel){
            (action) in
            self.myLabel.text = "Cancel"
        }
        alert.addAction(actionAgree1)
        alert.addAction(actionAgree2)
        alert.addAction(actionCancel)
        self.present(alert, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

