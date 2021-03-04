//
//  MyTabBarController.swift
//  Epicture
//
//  Created by Paul Erny on 12/10/2020.
//  Copyright © 2020 Paul Erny. All rights reserved.
//

import UIKit

class MyTabBarController : UITabBarController {
    var accessToken = ""
    var refreshToken = ""
    var images: [ImagesData] = [ImagesData]()

//    @IBInspectable var defaultIndex: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UITabBar.appearance().tintColor = .systemGreen
//        self.tabBarController?.selectedIndex = 2 // sets the home tab to appear first
    }
}
