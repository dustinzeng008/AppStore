//
//  BaseListController.swift
//  AppStore
//
//  Created by Yong Zeng on 8/5/19.
//  Copyright © 2019 yongzeng. All rights reserved.
//

import UIKit

class BaseListController: UICollectionViewController {

    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
