//
//  WebVC.swift
//  XMLParseExample
//
//  Created by Yury Popov on 26/09/2019.
//  Copyright © 2019 Iurii Popov. All rights reserved.
//

import UIKit
import WebKit

class WebVC: UIViewController, WKUIDelegate {
    
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    var website: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.navigationDelegate = self
        
        if let link = website {
            let url = URL(string: link)
            webView.load(URLRequest(url: url!))
        }
        
    }
}

extension WebVC: WKNavigationDelegate {
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.stopAnimating()
        activityIndicator.isHidden = true
    }
}


