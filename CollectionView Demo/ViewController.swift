//
//  ViewController.swift
//  CollectionView Demo
//
//  Created by iFlame on 06/04/17.
//  Copyright © 2017 IFlame. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {

    @IBOutlet var collectionview: UICollectionView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionview.delegate = self
        
        self.collectionview.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell",
                                                      for: indexPath)as!  CollectionViewCell
        
        
        cell.myimageview.image = UIImage.init(named:"lion.jpeg")
        
        return cell
        
    }
       
}

