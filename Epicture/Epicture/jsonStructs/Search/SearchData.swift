/*
Copyright (c) 2020 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
import UIKit

struct SearchData : Codable {
    let id : String?
    let title : String?
    let description : String?
    let datetime : Int?
    let cover : String?
    let type : String? //
    let animated : Bool? //
    let size : Int? //
    let heigh : Int? //
    let width : Int? //
    let bandwidth : Int? //
    let has_sound : Bool? //
    let edited : Int? //
    let cover_width : Int?
    let cover_height : Int?
    let account_url : String?
    let account_id : Int?
    let privacy : String?
    let layout : String?
    let views : Int?
    let link : String?
    let ups : Int?
    let downs : Int?
    let points : Int?
    let score : Int?
    let is_album : Bool?
    let vote : String?
    let favorite : Bool?
    let nsfw : Bool?
    let section : String?
    let comment_count : Int?
    let favorite_count : Int?
    let topic : String?
    let topic_id : Int?
    let images_count : Int?
    let in_gallery : Bool?
    let is_ad : Bool?
    let tags : [SearchTags]?
    let ad_type : Int?
    let ad_url : String?
    let in_most_viral : Bool?
    let include_album_ads : Bool?
    let images : [SearchImages]?
    let ad_config : Ad_config?
    let deletehash : String? //
    let name : String? //

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case title = "title"
        case description = "description"
        case datetime = "datetime"
        case cover = "cover"
        case type = "type" //
        case animated = "animated" //
        case size = "size" //
        case heigh = "heigh" //
        case width = "width" //
        case bandwidth = "bandwidth" //
        case has_sound = "has_sound" //
        case edited = "edited" //
        case cover_width = "cover_width"
        case cover_height = "cover_height"
        case account_url = "account_url"
        case account_id = "account_id"
        case privacy = "privacy"
        case layout = "layout"
        case views = "views"
        case link = "link"
        case ups = "ups"
        case downs = "downs"
        case points = "points"
        case score = "score"
        case is_album = "is_album"
        case vote = "vote"
        case favorite = "favorite"
        case nsfw = "nsfw"
        case section = "section"
        case comment_count = "comment_count"
        case favorite_count = "favorite_count"
        case topic = "topic"
        case topic_id = "topic_id"
        case images_count = "images_count"
        case in_gallery = "in_gallery"
        case is_ad = "is_ad"
        case tags = "tags"
        case ad_type = "ad_type"
        case ad_url = "ad_url"
        case in_most_viral = "in_most_viral"
        case include_album_ads = "include_album_ads"
        case images = "images"
        case ad_config = "ad_config"
        case deletehash = "deletehash" //
        case name = "name" //
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        title = try values.decodeIfPresent(String.self, forKey: .title)
        description = try values.decodeIfPresent(String.self, forKey: .description)
        datetime = try values.decodeIfPresent(Int.self, forKey: .datetime)
        cover = try values.decodeIfPresent(String.self, forKey: .cover)
        type = try values.decodeIfPresent( String.self, forKey: .type) //
        animated = try values.decodeIfPresent( Bool.self, forKey: .animated) //
        size = try values.decodeIfPresent( Int.self, forKey: .size) //
        heigh = try values.decodeIfPresent( Int.self, forKey: .heigh) //
        width = try values.decodeIfPresent( Int.self, forKey: .width) //
        bandwidth = try values.decodeIfPresent( Int.self, forKey: .bandwidth) //
        has_sound = try values.decodeIfPresent( Bool.self, forKey: .has_sound) //
        edited = try values.decodeIfPresent( Int.self, forKey: .edited) //
        cover_width = try values.decodeIfPresent(Int.self, forKey: .cover_width)
        cover_height = try values.decodeIfPresent(Int.self, forKey: .cover_height)
        account_url = try values.decodeIfPresent(String.self, forKey: .account_url)
        account_id = try values.decodeIfPresent(Int.self, forKey: .account_id)
        privacy = try values.decodeIfPresent(String.self, forKey: .privacy)
        layout = try values.decodeIfPresent(String.self, forKey: .layout)
        views = try values.decodeIfPresent(Int.self, forKey: .views)
        link = try values.decodeIfPresent(String.self, forKey: .link)
        ups = try values.decodeIfPresent(Int.self, forKey: .ups)
        downs = try values.decodeIfPresent(Int.self, forKey: .downs)
        points = try values.decodeIfPresent(Int.self, forKey: .points)
        score = try values.decodeIfPresent(Int.self, forKey: .score)
        is_album = try values.decodeIfPresent(Bool.self, forKey: .is_album)
        vote = try values.decodeIfPresent(String.self, forKey: .vote)
        favorite = try values.decodeIfPresent(Bool.self, forKey: .favorite)
        nsfw = try values.decodeIfPresent(Bool.self, forKey: .nsfw)
        section = try values.decodeIfPresent(String.self, forKey: .section)
        comment_count = try values.decodeIfPresent(Int.self, forKey: .comment_count)
        favorite_count = try values.decodeIfPresent(Int.self, forKey: .favorite_count)
        topic = try values.decodeIfPresent(String.self, forKey: .topic)
        topic_id = try values.decodeIfPresent(Int.self, forKey: .topic_id)
        images_count = try values.decodeIfPresent(Int.self, forKey: .images_count)
        in_gallery = try values.decodeIfPresent(Bool.self, forKey: .in_gallery)
        is_ad = try values.decodeIfPresent(Bool.self, forKey: .is_ad)
        tags = try values.decodeIfPresent([SearchTags].self, forKey: .tags)
        ad_type = try values.decodeIfPresent(Int.self, forKey: .ad_type)
        ad_url = try values.decodeIfPresent(String.self, forKey: .ad_url)
        in_most_viral = try values.decodeIfPresent(Bool.self, forKey: .in_most_viral)
        include_album_ads = try values.decodeIfPresent(Bool.self, forKey: .include_album_ads)
        images = try values.decodeIfPresent([SearchImages].self, forKey: .images)
        ad_config = try values.decodeIfPresent(Ad_config.self, forKey: .ad_config)
        deletehash = try values.decodeIfPresent(String.self, forKey: .deletehash) //
        name = try values.decodeIfPresent(String.self, forKey: .name) //
    }

}

//public class SearchData {
//    public var id : String?
//    public var title : String?
//    public var description : String?
//    public var datetime : Int?
//    public var cover : String?
//    public var cover_width : Int?
//    public var cover_height : Int?
//    public var account_url : String?
//    public var account_id : Int?
//    public var privacy : String?
//    public var layout : String?
//    public var views : Int?
//    public var link : String?
//    public var ups : Int?
//    public var downs : Int?
//    public var points : Int?
//    public var score : Int?
//    public var is_album : Bool?
//    public var vote : String?
//    public var favorite : Bool?
//    public var nsfw : Bool?
//    public var section : String?
//    public var comment_count : Int?
//    public var favorite_count : Int?
//    public var topic : String?
//    public var topic_id : Int?
//    public var images_count : Int?
//    public var in_gallery : Bool?
//    public var is_ad : Bool?
//    public var tags : Array<String>?
//    public var ad_type : Int?
//    public var ad_url : String?
//    public var in_most_viral : Bool?
//    public var include_album_ads : Bool?
//    public var images : Array<SearchImages>?
//    public var ad_config : Ad_config?
//
///**
//    Returns an array of models based on given dictionary.
//
//    Sample usage:
//    let data_list = Data.modelsFromDictionaryArray(someDictionaryArrayFromJSON)
//
//    - parameter array:  NSArray from JSON dictionary.
//
//    - returns: Array of Data Instances.
//*/
//    public class func modelsFromDictionaryArray(array:NSArray) -> [SearchData]
//    {
//        var models:[SearchData] = []
//        for item in array
//        {
//            models.append(SearchData(dictionary: item as! NSDictionary)!)
//        }
//        return models
//    }
//
///**
//    Constructs the object based on the given dictionary.
//
//    Sample usage:
//    let data = Data(someDictionaryFromJSON)
//
//    - parameter dictionary:  NSDictionary from JSON.
//
//    - returns: Data Instance.
//*/
//    required public init?(dictionary: NSDictionary) {
//
//        id = dictionary["id"] as? String
//        title = dictionary["title"] as? String
//        description = dictionary["description"] as? String
//        datetime = dictionary["datetime"] as? Int
//        cover = dictionary["cover"] as? String
//        cover_width = dictionary["cover_width"] as? Int
//        cover_height = dictionary["cover_height"] as? Int
//        account_url = dictionary["account_url"] as? String
//        account_id = dictionary["account_id"] as? Int
//        privacy = dictionary["privacy"] as? String
//        layout = dictionary["layout"] as? String
//        views = dictionary["views"] as? Int
//        link = dictionary["link"] as? String
//        ups = dictionary["ups"] as? Int
//        downs = dictionary["downs"] as? Int
//        points = dictionary["points"] as? Int
//        score = dictionary["score"] as? Int
//        is_album = dictionary["is_album"] as? Bool
//        vote = dictionary["vote"] as? String
//        favorite = dictionary["favorite"] as? Bool
//        nsfw = dictionary["nsfw"] as? Bool
//        section = dictionary["section"] as? String
//        comment_count = dictionary["comment_count"] as? Int
//        favorite_count = dictionary["favorite_count"] as? Int
//        topic = dictionary["topic"] as? String
//        topic_id = dictionary["topic_id"] as? Int
//        images_count = dictionary["images_count"] as? Int
//        in_gallery = dictionary["in_gallery"] as? Bool
//        is_ad = dictionary["is_ad"] as? Bool
//        if (dictionary["tags"] != nil) { tags = Tags.modelsFromDictionaryArray(dictionary["tags"] as! NSArray) }
//        ad_type = dictionary["ad_type"] as? Int
//        ad_url = dictionary["ad_url"] as? String
//        in_most_viral = dictionary["in_most_viral"] as? Bool
//        include_album_ads = dictionary["include_album_ads"] as? Bool
//        if (dictionary["images"] != nil) { images = SearchImages.modelsFromDictionaryArray(array: dictionary["images"] as! NSArray) }
//        if (dictionary["ad_config"] != nil) { ad_config = Ad_config(dictionary: dictionary["ad_config"] as! NSDictionary) }
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
//        dictionary.setValue(self.cover, forKey: "cover")
//        dictionary.setValue(self.cover_width, forKey: "cover_width")
//        dictionary.setValue(self.cover_height, forKey: "cover_height")
//        dictionary.setValue(self.account_url, forKey: "account_url")
//        dictionary.setValue(self.account_id, forKey: "account_id")
//        dictionary.setValue(self.privacy, forKey: "privacy")
//        dictionary.setValue(self.layout, forKey: "layout")
//        dictionary.setValue(self.views, forKey: "views")
//        dictionary.setValue(self.link, forKey: "link")
//        dictionary.setValue(self.ups, forKey: "ups")
//        dictionary.setValue(self.downs, forKey: "downs")
//        dictionary.setValue(self.points, forKey: "points")
//        dictionary.setValue(self.score, forKey: "score")
//        dictionary.setValue(self.is_album, forKey: "is_album")
//        dictionary.setValue(self.vote, forKey: "vote")
//        dictionary.setValue(self.favorite, forKey: "favorite")
//        dictionary.setValue(self.nsfw, forKey: "nsfw")
//        dictionary.setValue(self.section, forKey: "section")
//        dictionary.setValue(self.comment_count, forKey: "comment_count")
//        dictionary.setValue(self.favorite_count, forKey: "favorite_count")
//        dictionary.setValue(self.topic, forKey: "topic")
//        dictionary.setValue(self.topic_id, forKey: "topic_id")
//        dictionary.setValue(self.images_count, forKey: "images_count")
//        dictionary.setValue(self.in_gallery, forKey: "in_gallery")
//        dictionary.setValue(self.is_ad, forKey: "is_ad")
//        dictionary.setValue(self.ad_type, forKey: "ad_type")
//        dictionary.setValue(self.ad_url, forKey: "ad_url")
//        dictionary.setValue(self.in_most_viral, forKey: "in_most_viral")
//        dictionary.setValue(self.include_album_ads, forKey: "include_album_ads")
//        dictionary.setValue(self.ad_config?.dictionaryRepresentation(), forKey: "ad_config")
//
//        return dictionary
//    }
//
//}
