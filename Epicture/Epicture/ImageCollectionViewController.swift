//
//  ImageCollectionViewController.swift
//  Epicture
//
//  Created by Paul Erny on 16/10/2020.
//  Copyright © 2020 Paul Erny. All rights reserved.
//

import UIKit
import Alamofire

import Foundation

class ImageCollectionViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var favoriteBtn: UIButton!
    
    var imageInfos: Image!
    var imageNb: Int = 0
    weak var homeVc: LoggedViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        SetupImage()
        if imageInfos.data!.favorite! {
            favoriteBtn.setBackgroundImage(UIImage(systemName: "heart.fill"), for: .normal)
        }
    }
    
    private func SetupImage() {
        if let image = imageInfos.img {
            imageView.image = image
        } else {
            print("couldnt create image obj")
        }
    }

    private func requestFavorite() {
        let header: HTTPHeaders = ["Authorization": "Bearer \(homeVc.accessToken)"];
        let id = self.imageInfos.data?.id ?? ""

        if id != "" {
            AF.request("https://api.imgur.com/3/image/\(id)/favorite", method: .post, headers: header).response { response in
                debugPrint(response)
            }
        }
    }

    @IBAction func Favorite(_ sender: UIButton) {
        if !imageInfos.data!.favorite! {
            sender.setBackgroundImage(UIImage(systemName: "heart.fill"), for: .normal)
            requestFavorite()
            homeVc.images[imageNb].data?.favorite! = true
            imageInfos.data?.favorite! = true
        } else {
            sender.setBackgroundImage(UIImage(systemName: "heart"), for: .normal)
            requestFavorite()
            homeVc.images[imageNb].data?.favorite! = false
            imageInfos.data?.favorite! = false
        }
    }
}
