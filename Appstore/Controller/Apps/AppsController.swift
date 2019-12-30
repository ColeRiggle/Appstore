//
//  AppsController.swift
//  Appstore
//
//  Created by Cole Riggle on 12/29/19.
//  Copyright © 2019 Cole Riggle. All rights reserved.
//

import UIKit

class AppsController: BaseListController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .yellow
    
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "id")
        
        
    }
    

}
