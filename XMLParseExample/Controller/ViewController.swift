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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}


// MARK: UICollectionViewDataSource
extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "XMLCell", for: indexPath) as! XMLCell
        
        return cell
    }
    
    
}

// MARK: UICollectionViewDelegate
extension ViewController: UICollectionViewDelegate {
    
}

