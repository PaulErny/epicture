/*
Copyright (c) 2020 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
import UIKit
struct Ad_config : Codable {
    let safeFlags : [String]?
    let highRiskFlags : [String]?
    let unsafeFlags : [String]?
    let wallUnsafeFlags : [String]?
    let showsAds : Bool?

    enum CodingKeys: String, CodingKey {

        case safeFlags = "safeFlags"
        case highRiskFlags = "highRiskFlags"
        case unsafeFlags = "unsafeFlags"
        case wallUnsafeFlags = "wallUnsafeFlags"
        case showsAds = "showsAds"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        safeFlags = try values.decodeIfPresent([String].self, forKey: .safeFlags)
        highRiskFlags = try values.decodeIfPresent([String].self, forKey: .highRiskFlags)
        unsafeFlags = try values.decodeIfPresent([String].self, forKey: .unsafeFlags)
        wallUnsafeFlags = try values.decodeIfPresent([String].self, forKey: .wallUnsafeFlags)
        showsAds = try values.decodeIfPresent(Bool.self, forKey: .showsAds)
    }

}

//public class Ad_config {
//    public var safeFlags : Array<String>?
//    public var highRiskFlags : Array<String>?
//    public var unsafeFlags : Array<String>?
//    public var wallUnsafeFlags : Array<String>?
//    public var showsAds : Bool?
//
///**
//    Returns an array of models based on given dictionary.
//    
//    Sample usage:
//    let ad_config_list = Ad_config.modelsFromDictionaryArray(someDictionaryArrayFromJSON)
//
//    - parameter array:  NSArray from JSON dictionary.
//
//    - returns: Array of Ad_config Instances.
//*/
//    public class func modelsFromDictionaryArray(array:NSArray) -> [Ad_config]
//    {
//        var models:[Ad_config] = []
//        for item in array
//        {
//            models.append(Ad_config(dictionary: item as! NSDictionary)!)
//        }
//        return models
//    }
//
///**
//    Constructs the object based on the given dictionary.
//    
//    Sample usage:
//    let ad_config = Ad_config(someDictionaryFromJSON)
//
//    - parameter dictionary:  NSDictionary from JSON.
//
//    - returns: Ad_config Instance.
//*/
//    required public init?(dictionary: NSDictionary) {
//
//        if (dictionary["safeFlags"] != nil) { safeFlags = SafeFlags.modelsFromDictionaryArray(dictionary["safeFlags"] as! NSArray) }
//        if (dictionary["highRiskFlags"] != nil) { highRiskFlags = HighRiskFlags.modelsFromDictionaryArray(dictionary["highRiskFlags"] as! NSArray) }
//        if (dictionary["unsafeFlags"] != nil) { unsafeFlags = UnsafeFlags.modelsFromDictionaryArray(dictionary["unsafeFlags"] as! NSArray) }
//        if (dictionary["wallUnsafeFlags"] != nil) { wallUnsafeFlags = WallUnsafeFlags.modelsFromDictionaryArray(dictionary["wallUnsafeFlags"] as! NSArray) }
//        showsAds = dictionary["showsAds"] as? Bool
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
//        dictionary.setValue(self.showsAds, forKey: "showsAds")
//
//        return dictionary
//    }
//
//}
