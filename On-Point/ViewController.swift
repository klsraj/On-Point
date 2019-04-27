//
//  ViewController.swift
//  On-Point
//
//  Created by Raj Kadiyala on 4/27/19.
//  Copyright © 2019 Mirchi Co. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func knockKnockButtonClicked(_ sender: Any) {
        
        let knockKnockAlert  = UIAlertController(title: "Knock Knock!", message: "Who's there", preferredStyle: .actionSheet)
        
        let knockKnockAction = UIAlertAction(title: "ME!", style: .default, handler: nil)
        
        knockKnockAlert.addAction(knockKnockAction)
        
        present(knockKnockAlert, animated: true, completion: nil)
    }
    
    @IBAction func hitMeButtonClicked(_ sender: Any) {
        
        let alert  = UIAlertController(title: "Hello World", message: "This is my first app", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    
    
}

