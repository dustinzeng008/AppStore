//
//  AppPreviewCell.swift
//  AppStore
//
//  Created by Yong Zeng on 8/7/19.
//  Copyright © 2019 yongzeng. All rights reserved.
//

import UIKit

class AppPreviewCell: UICollectionViewCell {
    
    let previewLabel = UILabel(text: "Preview", font: UIFont.boldSystemFont(ofSize: 20))
    let horizontalController = PreviewScreenshotsController()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(previewLabel)
        addSubview(horizontalController.view)
        previewLabel.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: .init(top: 0, left: 20, bottom: 0, right: 20))
        horizontalController.view.anchor(top: previewLabel.bottomAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 20, left: 0, bottom: 0, right: 0))
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
