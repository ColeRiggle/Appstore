//
//  SearchResult.swift
//  Appstore
//
//  Created by Cole Riggle on 12/19/19.
//  Copyright © 2019 Cole Riggle. All rights reserved.
//

import Foundation

struct SearchResult: Decodable {
    let resultCount: Int
    let results: [Result]
}

struct Result: Decodable {
    let trackName: String
    let primaryGenreName: String
    let averageUserRating: Float?
    let screenshotUrls: [String]
    let artworkUrl100: String // app icon
}
