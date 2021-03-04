//
//  ViewController.swift
//  Epicture
//
//  Created by Paul Erny on 29/09/2020.
//  Copyright © 2020 Paul Erny. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    //let client_id = "b3b398354ccd977";
    let client_id = "b1e9460258e5434";
    //let client_secret = "49fa2c397d9ba028441e481186f62b46e1a9c2ba";
    let client_secret = "e43d4a8a1f8f9b416f05e62f8e4b82a88810e8ce";
    var access_token: String? = nil;
    var refresh_token: String? = nil;

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func openImgurApi(_ sender: Any) {
        if let url = URL(string: "https://api.imgur.com/oauth2/authorize?client_id=\(client_id)&response_type=token") {
            UIApplication.shared.open(url)
        }
    }
}
