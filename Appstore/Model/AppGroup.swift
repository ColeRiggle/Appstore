//
//  AppGroup.swift
//  Appstore
//
//  Created by Cole Riggle on 1/2/20.
//  Copyright © 2020 Cole Riggle. All rights reserved.
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
    let id, name, artistName, artworkUrl100: String
}
