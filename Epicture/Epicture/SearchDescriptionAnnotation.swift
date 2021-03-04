//
//  SearchDescriptionAnnotation.swift
//  Epicture
//
//  Created by Paul Erny on 23/10/2020.
//  Copyright © 2020 Paul Erny. All rights reserved.
//

import Foundation
struct Description_annotations : Codable {
    let tmp : String?

    enum CodingKeys: String, CodingKey {
        case tmp = "tmp"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        tmp = ""
    }

}
