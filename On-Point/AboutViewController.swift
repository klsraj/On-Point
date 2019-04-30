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
        if let htmlPath = Bundle.main.path(forResource: "OnPoint", ofType: "html") {
            let url = URL(fileURLWithPath: htmlPath)
            let request = URLRequest(url: url)
            webView.load(request)
        }

    }

    @IBAction func aboutViewControllerCloseButtonClicked(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
}
