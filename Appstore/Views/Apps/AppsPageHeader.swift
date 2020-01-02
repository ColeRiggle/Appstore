//
//  AppsPageHeader.swift
//  Appstore
//
//  Created by Cole Riggle on 1/2/20.
//  Copyright © 2020 Cole Riggle. All rights reserved.
//

import UIKit

class AppsPageHeader: UICollectionReusableView {
    
    let appHeaderHorizontalController = UIViewController()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .blue
        
        appHeaderHorizontalController.view.backgroundColor = .purple
        addSubview(appHeaderHorizontalController.view)
        appHeaderHorizontalController.view.fillSuperview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
