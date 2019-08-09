//
//  ReviewsController.swift
//  AppStore
//
//  Created by Yong Zeng on 8/7/19.
//  Copyright © 2019 yongzeng. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class ReviewsController: HorizontalSnappingController, UICollectionViewDelegateFlowLayout {
    
    var reviews: Reviews? {
        didSet {
            collectionView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = UIColor.white
        // Register cell classes
        self.collectionView!.register(ReviewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        self.collectionView.contentInset = .init(top: 0, left: 16, bottom: 0, right: 16)
    }


    // MARK: UICollectionViewDataSource
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ReviewCell
        
        let entry = self.reviews?.feed.entry[indexPath.item]
        cell.titleLabel.text = entry?.title.label
        cell.authorLabel.text = entry?.author.name.label
        cell.bodyLabel.text = entry?.content.label
        
        if (entry != nil) {
            for (index, view) in cell.starsStackView.arrangedSubviews.enumerated() {
                if let ratingInt = Int(entry!.rating.label) {
                    view.alpha = index >= ratingInt ? 0 : 1
                }
            }
        }
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width - 48, height: view.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 16
    }

}
