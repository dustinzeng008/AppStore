//
//  HorizontalSnappingController.swift
//  AppStore
//
//  Created by Yong Zeng on 8/6/19.
//  Copyright © 2019 yongzeng. All rights reserved.
//

import UIKit

class HorizontalSnappingController: UICollectionViewController {
    
    init() {
        let layout = BetterSnappingLayout()
        layout.scrollDirection = .horizontal
        super.init(collectionViewLayout: layout)
        collectionView.decelerationRate = .fast
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
