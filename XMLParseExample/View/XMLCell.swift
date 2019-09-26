//
//  XMLCell.swift
//  XMLParseExample
//
//  Created by Yury Popov on 26/09/2019.
//  Copyright © 2019 Iurii Popov. All rights reserved.
//

import UIKit

class XMLCell: UICollectionViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    
    var item: RSSItem! {
        didSet {
            titleLabel.text = item.title
            dateLabel.text = item.pubDate
        }
    }
}
