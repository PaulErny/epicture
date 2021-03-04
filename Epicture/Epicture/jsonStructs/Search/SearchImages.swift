/*
Copyright (c) 2020 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
import UIKit

struct SearchImages : Codable {
    let id : String?
    let title : String?
    let description : String?
    let datetime : Int?
    let type : String?
    let animated : Bool?
    let width : Int?
    let height : Int?
    let size : Int?
    let views : Int?
    let bandwidth : Int?
    let vote : String?
    let favorite : Bool?
    let nsfw : String?
    let section : String?
    let account_url : String?
    let account_id : String?
    let is_ad : Bool?
    let in_most_viral : Bool?
    let has_sound : Bool?
    let tags : [SearchTags]?
    let ad_type : Int?
    let ad_url : String?
    let edited : String?
    let in_gallery : Bool?
    let link : String?
    let comment_count : String?
    let favorite_count : String?
    let ups : String?
    let downs : String?
    let points : String?
    let score : String?
    
    let deletehash : String? //
    let name : String? //
    let cover : String? //
    let cover_width : Int? //
    let cover_height : Int? //
    let privacy : String? //
    let is_album : Bool? //
    let topic : String? //
    let topic_id : String? // custom type defined in SearchData.swift
    let images_count : Int? //
    
    enum CodingKeys: String, CodingKey {

        case id = "id"
        case title = "title"
        case description = "description"
        case datetime = "datetime"
        case type = "type"
        case animated = "animated"
        case width = "width"
        case height = "height"
        case size = "size"
        case views = "views"
        case bandwidth = "bandwidth"
        case vote = "vote"
        case favorite = "favorite"
        case nsfw = "nsfw"
        case section = "section"
        case account_url = "account_url"
        case account_id = "account_id"
        case is_ad = "is_ad"
        case in_most_viral = "in_most_viral"
        case has_sound = "has_sound"
        case tags = "tags"
        case ad_type = "ad_type"
        case ad_url = "ad_url"
        case edited = "edited"
        case in_gallery = "in_gallery"
        case link = "link"
        case comment_count = "comment_count"
        case favorite_count = "favorite_count"
        case ups = "ups"
        case downs = "downs"
        case points = "points"
        case score = "score"
        
        case deletehash = "deletehash" //
        case name = "name" //
        case cover = "cover" //
        case cover_width = "cover_width" //
        case cover_height = "cover_height" //
        case privacy = "privacy" //
        case is_album = "is_album" //
        case topic = "topic" //
        case topic_id = "topic_id" //
        case images_count = "images_count" //
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        title = try values.decodeIfPresent(String.self, forKey: .title)
        description = try values.decodeIfPresent(String.self, forKey: .description)
        datetime = try values.decodeIfPresent(Int.self, forKey: .datetime)
        type = try values.decodeIfPresent(String.self, forKey: .type)
        animated = try values.decodeIfPresent(Bool.self, forKey: .animated)
        width = try values.decodeIfPresent(Int.self, forKey: .width)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
        size = try values.decodeIfPresent(Int.self, forKey: .size)
        views = try values.decodeIfPresent(Int.self, forKey: .views)
        bandwidth = try values.decodeIfPresent(Int.self, forKey: .bandwidth)
        vote = try values.decodeIfPresent(String.self, forKey: .vote)
        favorite = try values.decodeIfPresent(Bool.self, forKey: .favorite)
        nsfw = try values.decodeIfPresent(String.self, forKey: .nsfw)
        section = try values.decodeIfPresent(String.self, forKey: .section)
        account_url = try values.decodeIfPresent(String.self, forKey: .account_url)
        account_id = try values.decodeIfPresent(String.self, forKey: .account_id)
        is_ad = try values.decodeIfPresent(Bool.self, forKey: .is_ad)
        in_most_viral = try values.decodeIfPresent(Bool.self, forKey: .in_most_viral)
        has_sound = try values.decodeIfPresent(Bool.self, forKey: .has_sound)
        tags = try values.decodeIfPresent([SearchTags].self, forKey: .tags)
        ad_type = try values.decodeIfPresent(Int.self, forKey: .ad_type)
        ad_url = try values.decodeIfPresent(String.self, forKey: .ad_url)
        edited = try values.decodeIfPresent(String.self, forKey: .edited)
        in_gallery = try values.decodeIfPresent(Bool.self, forKey: .in_gallery)
        link = try values.decodeIfPresent(String.self, forKey: .link)
        comment_count = try values.decodeIfPresent(String.self, forKey: .comment_count)
        favorite_count = try values.decodeIfPresent(String.self, forKey: .favorite_count)
        ups = try values.decodeIfPresent(String.self, forKey: .ups)
        downs = try values.decodeIfPresent(String.self, forKey: .downs)
        points = try values.decodeIfPresent(String.self, forKey: .points)
        score = try values.decodeIfPresent(String.self, forKey: .score)
        
        deletehash = try values.decodeIfPresent(String.self, forKey: .deletehash) //
        name = try values.decodeIfPresent(String.self, forKey: .name) //
        cover = try values.decodeIfPresent(String.self, forKey: .cover) //
        cover_width = try values.decodeIfPresent(Int.self, forKey: .cover_width) //
        cover_height = try values.decodeIfPresent(Int.self, forKey: .cover_height) //
        privacy = try values.decodeIfPresent(String.self, forKey: .privacy) //
        is_album = try values.decodeIfPresent(Bool.self, forKey: .is_album) //
        topic = try values.decodeIfPresent(String.self, forKey: .topic) //
        topic_id = try values.decodeIfPresent(String.self, forKey: .topic_id) //
        images_count = try values.decodeIfPresent(Int.self, forKey: .images_count) //
    }

}

//public class SearchImages {
//    public var id : String?
//    public var title : String?
//    public var description : String?
//    public var datetime : Int?
//    public var type : String?
//    public var animated : Bool?
//    public var width : Int?
//    public var height : Int?
//    public var size : Int?
//    public var views : Int?
//    public var bandwidth : Int?
//    public var vote : String?
//    public var favorite : Bool?
//    public var nsfw : String?
//    public var section : String?
//    public var account_url : String?
//    public var account_id : String?
//    public var is_ad : Bool?
//    public var in_most_viral : Bool?
//    public var has_sound : Bool?
//    public var tags : Array<String>?
//    public var ad_type : Int?
//    public var ad_url : String?
//    public var edited : String?
//    public var in_gallery : Bool?
//    public var link : String?
//    public var comment_count : String?
//    public var favorite_count : String?
//    public var ups : String?
//    public var downs : String?
//    public var points : String?
//    public var score : String?
//
///**
//    Returns an array of models based on given dictionary.
//
//    Sample usage:
//    let images_list = Images.modelsFromDictionaryArray(someDictionaryArrayFromJSON)
//
//    - parameter array:  NSArray from JSON dictionary.
//
//    - returns: Array of Images Instances.
//*/
//    public class func modelsFromDictionaryArray(array:NSArray) -> [SearchImages]
//    {
//        var models:[SearchImages] = []
//        for item in array
//        {
//            models.append(SearchImages(dictionary: item as! NSDictionary)!)
//        }
//        return models
//    }
//
///**
//    Constructs the object based on the given dictionary.
//
//    Sample usage:
//    let images = Images(someDictionaryFromJSON)
//
//    - parameter dictionary:  NSDictionary from JSON.
//
//    - returns: Images Instance.
//*/
//    required public init?(dictionary: NSDictionary) {
//
//        id = dictionary["id"] as? String
//        title = dictionary["title"] as? String
//        description = dictionary["description"] as? String
//        datetime = dictionary["datetime"] as? Int
//        type = dictionary["type"] as? String
//        animated = dictionary["animated"] as? Bool
//        width = dictionary["width"] as? Int
//        height = dictionary["height"] as? Int
//        size = dictionary["size"] as? Int
//        views = dictionary["views"] as? Int
//        bandwidth = dictionary["bandwidth"] as? Int
//        vote = dictionary["vote"] as? String
//        favorite = dictionary["favorite"] as? Bool
//        nsfw = dictionary["nsfw"] as? String
//        section = dictionary["section"] as? String
//        account_url = dictionary["account_url"] as? String
//        account_id = dictionary["account_id"] as? String
//        is_ad = dictionary["is_ad"] as? Bool
//        in_most_viral = dictionary["in_most_viral"] as? Bool
//        has_sound = dictionary["has_sound"] as? Bool
//        if (dictionary["tags"] != nil) { tags = Tags.modelsFromDictionaryArray(dictionary["tags"] as! NSArray) }
//        ad_type = dictionary["ad_type"] as? Int
//        ad_url = dictionary["ad_url"] as? String
//        edited = dictionary["edited"] as? String
//        in_gallery = dictionary["in_gallery"] as? Bool
//        link = dictionary["link"] as? String
//        comment_count = dictionary["comment_count"] as? String
//        favorite_count = dictionary["favorite_count"] as? String
//        ups = dictionary["ups"] as? String
//        downs = dictionary["downs"] as? String
//        points = dictionary["points"] as? String
//        score = dictionary["score"] as? String
//    }
//
//
///**
//    Returns the dictionary representation for the current instance.
//
//    - returns: NSDictionary.
//*/
//    public func dictionaryRepresentation() -> NSDictionary {
//
//        let dictionary = NSMutableDictionary()
//
//        dictionary.setValue(self.id, forKey: "id")
//        dictionary.setValue(self.title, forKey: "title")
//        dictionary.setValue(self.description, forKey: "description")
//        dictionary.setValue(self.datetime, forKey: "datetime")
//        dictionary.setValue(self.type, forKey: "type")
//        dictionary.setValue(self.animated, forKey: "animated")
//        dictionary.setValue(self.width, forKey: "width")
//        dictionary.setValue(self.height, forKey: "height")
//        dictionary.setValue(self.size, forKey: "size")
//        dictionary.setValue(self.views, forKey: "views")
//        dictionary.setValue(self.bandwidth, forKey: "bandwidth")
//        dictionary.setValue(self.vote, forKey: "vote")
//        dictionary.setValue(self.favorite, forKey: "favorite")
//        dictionary.setValue(self.nsfw, forKey: "nsfw")
//        dictionary.setValue(self.section, forKey: "section")
//        dictionary.setValue(self.account_url, forKey: "account_url")
//        dictionary.setValue(self.account_id, forKey: "account_id")
//        dictionary.setValue(self.is_ad, forKey: "is_ad")
//        dictionary.setValue(self.in_most_viral, forKey: "in_most_viral")
//        dictionary.setValue(self.has_sound, forKey: "has_sound")
//        dictionary.setValue(self.ad_type, forKey: "ad_type")
//        dictionary.setValue(self.ad_url, forKey: "ad_url")
//        dictionary.setValue(self.edited, forKey: "edited")
//        dictionary.setValue(self.in_gallery, forKey: "in_gallery")
//        dictionary.setValue(self.link, forKey: "link")
//        dictionary.setValue(self.comment_count, forKey: "comment_count")
//        dictionary.setValue(self.favorite_count, forKey: "favorite_count")
//        dictionary.setValue(self.ups, forKey: "ups")
//        dictionary.setValue(self.downs, forKey: "downs")
//        dictionary.setValue(self.points, forKey: "points")
//        dictionary.setValue(self.score, forKey: "score")
//
//        return dictionary
//    }
//
//}
