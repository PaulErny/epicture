//
//  FavoriteJson.swift
//  Epicture
//
//  Created by Paul Erny on 24/10/2020.
//  Copyright © 2020 Paul Erny. All rights reserved.
//

import Foundation
import UIKit

struct FavoriteJson : Codable {
    let data : [FavoriteJsonData]?
    let success : Bool?
    let status : Int?

    enum CodingKeys: String, CodingKey {

        case data = "data"
        case success = "success"
        case status = "status"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([FavoriteJsonData].self, forKey: .data)
        success = try values.decodeIfPresent(Bool.self, forKey: .success)
        status = try values.decodeIfPresent(Int.self, forKey: .status)
    }
}
