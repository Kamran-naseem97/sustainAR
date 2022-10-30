//
//  jsonStruct.swift
//  AutoMLExample
//
//  Created by Hani Tawil on 30/10/2022.
//  Copyright © 2022 Google Inc. All rights reserved.
//

import Foundation

// MARK: - Welcome
struct Welcome: Codable {
    let data: [Datum]
}

// MARK: - Datum
struct Datum: Codable {
    let id, type: String
    let emissions: [String]
    let link: String

    enum CodingKeys: String, CodingKey {
        case id
        case type = "Type"
        case emissions = "Emissions"
        case link = "Link"
    }
}
