//
//  LoggedViewController.swift
//  Epicture
//
//  Created by Paul Erny on 08/10/2020.
//  Copyright © 2020 Paul Erny. All rights reserved.
//

import UIKit
import Alamofire

struct segueParam {
    public var param: [Any]
}

class LoggedViewController: UIViewController {
    var accessToken = ""
    var refreshToken = ""
    var images: [Image] = []
    let viewImageSegueID = "viewImageSegueId"

    @IBOutlet var collectionView: UICollectionView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // tabBar linking
        let tabBar = self.tabBarController as! MyTabBarController
        
//        setupCollectionViewLayout()
        // get acces token from tabBac class
        self.accessToken = tabBar.accessToken
        self.refreshToken = tabBar.refreshToken

        // Do any additional setup after loading the view.
        self.requestImg()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        setupCollectionViewLayout()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let item = sender as! segueParam
        
        if segue.identifier == viewImageSegueID {
            if let vc = segue.destination as? ImageCollectionViewController {
                vc.imageInfos = (item.param[0] as! Image)
                vc.imageNb = item.param[1] as! Int
                vc.homeVc = self
            }
        }
    }
    
    private func setupCollectionViewLayout() -> Void {
        let layout =  UICollectionViewFlowLayout()
        collectionView.register( CollectionViewCell.nib(), forCellWithReuseIdentifier: CollectionViewCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
        let cellsPerRow: CGFloat = 3
        let lineSpacing: CGFloat = 5
        let interItemSpacing: CGFloat = 5
        
        let itemWidth = ( collectionView.frame.width - (cellsPerRow - 1) * interItemSpacing) / cellsPerRow
        let itemHight = itemWidth
        layout.itemSize = CGSize(width: itemWidth, height: itemHight)
        layout.sectionInset = UIEdgeInsets.zero
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = lineSpacing
        layout.minimumInteritemSpacing = interItemSpacing
        collectionView.setCollectionViewLayout(layout, animated: true)
    }

    func requestImg() -> Void {
        let header: HTTPHeaders = ["Authorization": "Bearer \(self.accessToken)"];
        // todo: error handling in response
        AF.request("https://api.imgur.com/3/account/me/images", method: .get, headers: header).response { response in
            let decoder = JSONDecoder()

            do {
                let imagesData = try decoder.decode(ResponseImgLib.self, from: response.data!)
                
                DispatchQueue.global(qos: .background).async {
                    // Background Thread
                    DispatchQueue.main.async {
                        // Run UI Updates
                        // download the image associated with each data in json array
                        for imgData in imagesData.data! {
                            self.images.append(Image())
                            self.images[self.images.count - 1].data = imgData // keep image info (tags, title, ...)
                            let imageUrl = URL(string: self.images[self.images.count - 1].data!.link!)  // download the image
                            let imageData:NSData = NSData(contentsOf: imageUrl!)!                       // as a Data object
                            self.images[self.images.count - 1].img = UIImage(data: imageData as Data) // create UIImage element from downloaded data object
                        }
//                        self.collectionView?.reloadData()
                        self.requestFavorites()
                    }
                }
            } catch {
                print(error)
                return
            }
        }.resume()
    }

    func requestFavorites() -> Void {
        let header: HTTPHeaders = ["Authorization": "Bearer \(self.accessToken)"];
        // todo: error handling in response
        AF.request("https://api.imgur.com/3/account/me/favorites/", method: .get, headers: header).response { response in
            let decoder = JSONDecoder()
            do {
                let imagesData = try decoder.decode(FavoriteJson.self, from: response.data!)
                
                DispatchQueue.global(qos: .background).async {
                    // Background Thread
                    DispatchQueue.main.async {
                        // Run UI Updates
                        // download the image associated with each data in json array
                        for imgData in imagesData.data! {
                            if let index = self.images.firstIndex(where: { imgData.id == $0.data!.id }) {
                                self.images[index].data?.favorite = true
                            }
                        }
                        self.collectionView?.reloadData()
                    }
                }
            } catch {
                print(error)
                return
            }
        }.resume()
    }
    
}

/// handle user tapping on collection view
extension LoggedViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // detect interaction
        let parameter = segueParam(param: [images[indexPath.item], indexPath.item])
//        let item = images[indexPath.item]
        performSegue(withIdentifier: viewImageSegueID, sender: parameter)
    }
}

/// handle collection view creation
extension LoggedViewController: UICollectionViewDataSource {
    /// returns the nb of cells to create
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.images.count
    }

    /// init the cell corresponding to variable IndexPath
    /// function called automatically for each cell
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier, for: indexPath) as! CollectionViewCell
        cell.backgroundColor = UIColor.white
            
        DispatchQueue.global(qos: .userInitiated).async {
            DispatchQueue.main.async {
                cell.configure(with: self.images[indexPath.row].img!)
                if !self.images[indexPath.row].data!.favorite! {
                    cell.isFavoriteImageView.isHidden = true
                }
            }
        }
        return cell
    }
}
