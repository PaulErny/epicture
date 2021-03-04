//
//  UploadImage.swift
//  Epicture
//
//  Created by Victor maurin on 19/10/2020.
//  Copyright © 2020 Paul Erny. All rights reserved.
//

import UIKit
import Alamofire

public struct Response: Codable {
    public var id : String?
    public var title : String?
    public var description : String?
    public var datetime : Int?
    public var type : String?
    public var animated : Bool?
    public var width : Int?
    public var height : Int?
    public var size : Int?
    public var views : Int?
    public var bandwidth : Int?
    public var vote : String?
    public var favorite : Bool?
    public var nsfw : String?
    public var section : String?
    public var account_url : String?
    public var account_id : Int?
    public var is_ad : Bool?
    public var in_most_viral : Bool?
    public var has_sound : Bool?
    public var tags : Array<String>?
    public var ad_type : Int?
    public var ad_url : String?
    public var edited : String?
    public var in_gallery : Bool?
    public var deletehash : String?
    public var name : String?
    public var link : String?
}

public struct ResponseImgUpload:Codable {
    public var data : Response?
    public var success : Bool?
    public var status : Int?
}
