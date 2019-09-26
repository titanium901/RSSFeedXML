//
//  ViewController.swift
//  XMLParseExample
//
//  Created by Yury Popov on 26/09/2019.
//  Copyright © 2019 Iurii Popov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    private var rssItems: [RSSItem]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchData()
    }
    
    private func fetchData() {
        
        let feedParser = FeedParser()
        feedParser.parseFeed(url: "https://www.sciencedaily.com/rss/top/technology.xml") { (rssItems) in
            self.rssItems = rssItems
            DispatchQueue.main.async {
                self.collectionView.reloadData()
            }
            
        }
    }
}


// MARK: UICollectionViewDataSource
extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let rssItems = rssItems else {
            return 0
        }
        return rssItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "XMLCell", for: indexPath) as! XMLCell
        
        if let item = rssItems?[indexPath.item] {
            cell.item = item
        }
        
        return cell
    }
    
    
}

// MARK: UICollectionViewDelegate
extension ViewController: UICollectionViewDelegate {
    
}

