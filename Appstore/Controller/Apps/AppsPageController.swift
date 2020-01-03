//
//  AppsController.swift
//  Appstore
//
//  Created by Cole Riggle on 12/29/19.
//  Copyright © 2019 Cole Riggle. All rights reserved.
//

import UIKit

class AppsPageController: BaseListController , UICollectionViewDelegateFlowLayout {
    
    let cellId = "id"
    let headerId = "appsPageControllerHeaderId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white

        collectionView.register(AppsGroupCell.self, forCellWithReuseIdentifier: cellId)
        
        // 1: First step for collection view header
        collectionView.register(AppsPageHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)
        
        fetchData()
    }
    
    var editorsChoiceGames: AppGroup?
    
    var groups = [AppGroup]()
    
    fileprivate func fetchData() {
        print("Fetching new JSON Data...")
        
        Service.shared.fetchGames { (appGroup, error) in
            if let error = error {
                print("Failed to fetch games: ", error)
                return
            }
            
            DispatchQueue.main.async {
                self.editorsChoiceGames = appGroup
                self.collectionView.reloadData()
            }
        }
    }
    
    // 2: Second step for collection view header
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath)
        return header
    }
    
    // 3: Third step for collection view header
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return .init(width: view.frame.width, height: 300)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return groups.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! AppsGroupCell
        cell.titleLabel.text = editorsChoiceGames?.feed.title
        cell.horizontalController.appGroup = editorsChoiceGames
        cell.horizontalController.collectionView.reloadData()
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width, height: 300)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 16, left: 0, bottom: 0, right: 0)
    }
}
