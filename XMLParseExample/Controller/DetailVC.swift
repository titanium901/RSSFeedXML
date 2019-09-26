//
//  DetailVC.swift
//  XMLParseExample
//
//  Created by Yury Popov on 26/09/2019.
//  Copyright © 2019 Iurii Popov. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var linkLabel: UILabel!
    
    var rssItem: RSSItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let item = rssItem {
            textView.text = item.description
            linkLabel.text = item.link
        }
    }
   
    @IBAction func tapOnLink(_ sender: UITapGestureRecognizer) {
        print("link")
        guard let link = linkLabel.text else { return }
        if let vc = storyboard?.instantiateViewController(withIdentifier: "WebVC") as? WebVC {
            vc.website = link
            present(vc, animated: true)
        }
    }
}
