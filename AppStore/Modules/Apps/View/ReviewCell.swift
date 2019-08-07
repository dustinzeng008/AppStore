//
//  ReviewCell.swift
//  AppStore
//
//  Created by Yong Zeng on 8/7/19.
//  Copyright © 2019 yongzeng. All rights reserved.
//

import UIKit

class ReviewCell: UICollectionViewCell {
    let titleLabel = UILabel(text: "Review Title", font: UIFont.boldSystemFont(ofSize: 18))
    let authorLabel = UILabel(text: "Author", font: UIFont.systemFont(ofSize: 16))
    let starsLabel = UILabel(text: "Stars", font: UIFont.systemFont(ofSize: 14))
    let bodyLabel = UILabel(text: "Review body", font: UIFont.systemFont(ofSize: 16), numberOfLines: 0)
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(white: 0.03, alpha: 0.03)
        layer.cornerRadius = 16
        clipsToBounds = true
        
        let stackView = VerticalStackView(arrangedSubviews: [
            UIStackView(arrangedSubviews: [titleLabel, UIView(), authorLabel]),
            starsLabel,
            bodyLabel], spacing: 12)
        addSubview(stackView)
        stackView.fillSuperview(padding: .init(top: 20, left: 20, bottom: 20, right: 20))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
