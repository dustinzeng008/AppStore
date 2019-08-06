//
//  AppsHeaderHorizontalController.swift
//  AppStore
//
//  Created by Yong Zeng on 8/5/19.
//  Copyright © 2019 yongzeng. All rights reserved.
//

import UIKit

private let cellID = "cellID"

class AppsHeaderHorizontalController: HorizontalSnappingController, UICollectionViewDelegateFlowLayout {
    var socialApps = [SocialApp]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = UIColor.white
        collectionView.contentInset = .init(top: 0, left: 16, bottom: 0, right: 16)
        collectionView.register(AppsHeaderCell.self, forCellWithReuseIdentifier: cellID)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width - 48, height: view.frame.height)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return socialApps.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! AppsHeaderCell
        let app = self.socialApps[indexPath.item]
        cell.companyLabel.text = app.name
        cell.titleLabel.text = app.tagline
        cell.imageView.sd_setImage(with: URL(string: app.imageUrl))
        return cell
    }
    
    
}
