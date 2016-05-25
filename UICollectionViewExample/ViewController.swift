//
//  ViewController.swift
//  UICollectionViewExample
//
//  Created by Marius Skalstad on 24.05.2016.
//  Copyright © 2016 Marius Skalstad. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource{
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var images = [UIImage]()
    var text = ["Batman","Captain A","Spiderman","Superman","Thor"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        images.append(UIImage(named: "batman")!)
        images.append(UIImage(named: "captainA")!)
        images.append(UIImage(named: "spiderman-new")!)
        images.append(UIImage(named: "superman-cover")!)
        images.append(UIImage(named: "thor4")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //CollectionView
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return text.count
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! CollectionViewCell
        
        cell.titleLabel.text = text[indexPath.row]
        cell.collectionImage.image = self.images[indexPath.row]
        
        return cell
    }

    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        let screenSize: CGRect = UIScreen.mainScreen().bounds
        
        return CGSizeMake(screenSize.width/2 - 0, 220/155 * (screenSize.width/2 - 10))
    }
}

