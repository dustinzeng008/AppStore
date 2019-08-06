//
//  AppGroup.swift
//  AppStore
//
//  Created by Yong Zeng on 8/6/19.
//  Copyright © 2019 yongzeng. All rights reserved.
//

import Foundation

struct AppGroup: Decodable {
    let feed: Feed
}

struct Feed: Decodable {
    let title: String
    let results: [FeedResult]
}

struct FeedResult: Decodable {
    let name, artistName, artworkUrl100: String
}
