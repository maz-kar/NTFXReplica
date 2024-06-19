//
//  Tv.swift
//  NTFXReplica
//
//  Created by Maziar Layeghkar on 10.06.24.
//

import Foundation

struct TrendingTvsResponse: Codable {
    let results: [Tv]
}

struct Tv: Codable {
    let id: Int
    let media_type: String?
    let original_name: String?
    let original_title: String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int
    let release_date: String?
    let vote_average: Double
}
