//
//  SearchResultCell.swift
//  Appstore
//
//  Created by Cole Riggle on 12/18/19.
//  Copyright © 2019 Cole Riggle. All rights reserved.
//

import UIKit

class SearchResultCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .green
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder): has not been implemented")
    }
    
}
