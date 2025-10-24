//
//  PostData.swift
//  swift practice
//
//  Created by mohsen tabasi on 10/23/25.
//  Copyright © 2025 mstf. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
