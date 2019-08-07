//
//  ScreenshotCell.swift
//  AppStore
//
//  Created by Yong Zeng on 8/7/19.
//  Copyright © 2019 yongzeng. All rights reserved.
//

import UIKit

class ScreenshotCell: UICollectionViewCell {
    let imageView = UIImageView(cornerRadius: 12)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
        imageView.fillSuperview()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
