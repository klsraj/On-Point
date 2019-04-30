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
        if let url = Bundle.main.url(forResource: "OnPoint",
                                     withExtension: "html") {
            if let htmlData = try? Data(contentsOf: url) {
                let baseURL = URL(fileURLWithPath: Bundle.main.bundlePath)
                webView.load(htmlData, mimeType: "text/html",
                             characterEncodingName: "UTF-8",
                             baseURL: baseURL)
            }
        }
    }

    @IBAction func aboutViewControllerCloseButtonClicked(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
}
