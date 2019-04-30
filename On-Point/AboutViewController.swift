//
//  AboutViewController.swift
//  On-Point
//
//  Created by Raj Kadiyala on 4/28/19.
//  Copyright © 2019 Mirchi Co. All rights reserved.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {



    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func aboutViewControllerCloseButtonClicked(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
}
