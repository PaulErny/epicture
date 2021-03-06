/*
Copyright (c) 2020 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
import UIKit

struct SearchJson : Codable {
    let data : [SearchData]?
    let success : Bool?
    let status : Int?

    enum CodingKeys: String, CodingKey {

        case data = "data"
        case success = "success"
        case status = "status"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([SearchData].self, forKey: .data)
        success = try values.decodeIfPresent(Bool.self, forKey: .success)
        status = try values.decodeIfPresent(Int.self, forKey: .status)
    }
}

//public class SearchJson {
//    public var data : Array<SearchData>?
//    public var success : Bool?
//    public var status : Int?
//
///**
//    Returns an array of models based on given dictionary.
//
//    Sample usage:
//    let json4Swift_Base_list = Json4Swift_Base.modelsFromDictionaryArray(someDictionaryArrayFromJSON)
//
//    - parameter array:  NSArray from JSON dictionary.
//
//    - returns: Array of Json4Swift_Base Instances.
//*/
//    public class func modelsFromDictionaryArray(array:NSArray) -> [SearchJson]
//    {
//        var models:[SearchJson] = []
//        for item in array
//        {
//            models.append(SearchJson(dictionary: item as! NSDictionary)!)
//        }
//        return models
//    }
//
///**
//    Constructs the object based on the given dictionary.
//
//    Sample usage:
//    let json4Swift_Base = Json4Swift_Base(someDictionaryFromJSON)
//
//    - parameter dictionary:  NSDictionary from JSON.
//
//    - returns: Json4Swift_Base Instance.
//*/
//    required public init?(dictionary: NSDictionary) {
//
//        if (dictionary["data"] != nil) { data = SearchData.modelsFromDictionaryArray(array: dictionary["data"] as! NSArray) }
//        success = dictionary["success"] as? Bool
//        status = dictionary["status"] as? Int
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
//        dictionary.setValue(self.success, forKey: "success")
//        dictionary.setValue(self.status, forKey: "status")
//
//        return dictionary
//    }
//
//}
