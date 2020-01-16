//
//  ReviewCell.swift
//  Appstore
//
//  Created by Cole Riggle on 1/15/20.
//  Copyright © 2020 Cole Riggle. All rights reserved.
//

import UIKit

class ReviewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .systemGray
        layer.cornerRadius = 16
        clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
