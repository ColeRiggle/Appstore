//
//  BaseListController.swift
//  Appstore
//
//  Created by Cole Riggle on 12/29/19.
//  Copyright © 2019 Cole Riggle. All rights reserved.
//

import UIKit

class BaseListController: UICollectionViewController {
    
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
