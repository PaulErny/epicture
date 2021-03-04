//
//  SearchViewController.swift
//  Epicture
//
//  Created by Victor maurin on 20/10/2020.
//  Copyright © 2020 Paul Erny. All rights reserved.
//

import UIKit
import Alamofire
import Foundation

class SearchViewController: UIViewController {
    var accessToken = ""
    var refreshToken = ""
    var images: [ImageSearch] = []
    let viewImageSegueID = "viewImageSegueId"
    var text = ""
    var pickerViewData = ["Sory by :", "Latest", "Most popular", "Most viewed"]
    var sortingMethods = ["time", "viral", "top"]
    var sort = ""

    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pickerView: UIPickerView!
    
    var collectionViewFlowLayout: UICollectionViewFlowLayout!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tabBar = self.tabBarController as! MyTabBarController
        
        // get acces token from tabBac class
        self.accessToken = tabBar.accessToken
        self.refreshToken = tabBar.refreshToken
        input.delegate = self
        pickerView.delegate = self
        pickerView.dataSource = self
        setUpCollectionView();
        // Do any additional setup after loading the view.
    }
    
    @IBAction func enter(_ sender: Any) {
        let header: HTTPHeaders = ["Authorization": "Bearer \(self.accessToken)"];

        text = input.text ?? "";
        AF.request("https://api.imgur.com/3/gallery/search/\(sort)//0/?q=\(text)", method: .get, headers: header).response { response in
            let decoder = JSONDecoder()

            do {
                let seachImg = try decoder.decode(SearchJson.self, from: response.data!)
                self.images = []
                
                DispatchQueue.global(qos: .background).async {
                    // Background Thread
                    DispatchQueue.main.async {
                        // Run UI Updates
                        // download the image associated with each data in json array
                        for imgData in seachImg.data! {
                            self.images.append(ImageSearch())
                            self.images[self.images.count - 1].data = imgData // keep image info (tags, title, ...)
                            var imageUrl: URL
                            if (self.images[self.images.count - 1].data!.images != nil) {
                                imageUrl = URL(string: self.images[self.images.count - 1].data!.images![0].link! )! // if album -> download first image
                            } else {
                                imageUrl = URL(string: self.images[self.images.count - 1].data!.link!)!  // else download the image
                            }
                            let imageData:NSData = NSData(contentsOf: imageUrl)!                       // as a Data object
                            self.images[self.images.count - 1].img = UIImage(data: imageData as Data) // create UIImage element from downloaded data object
                        }
                        self.collectionView?.reloadData()
                    }
                }
            } catch {
                debugPrint("json error: \(error.localizedDescription)")
            }
        }.resume()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews();
        setUpCollectionViewItemSize();
    }
    
    private func setUpCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(SearchCollectionViewCell.nib(), forCellWithReuseIdentifier: SearchCollectionViewCell.identifier)
    }
    
    private func setUpCollectionViewItemSize() {
        if collectionViewFlowLayout == nil {
            let numberOfItemForRow: CGFloat = 3;
            let lineSpacing: CGFloat = 5;
            let interItemSpacing: CGFloat = 5;
            
            let width = (collectionView.frame.width - (numberOfItemForRow - 1) * interItemSpacing) / numberOfItemForRow
            let heigth = width;
            
            collectionViewFlowLayout = UICollectionViewFlowLayout()
            
            collectionViewFlowLayout.itemSize = CGSize(width: width, height: heigth)
            
            collectionViewFlowLayout.sectionInset = UIEdgeInsets.zero
            collectionViewFlowLayout.scrollDirection = .vertical
            collectionViewFlowLayout.minimumLineSpacing = lineSpacing
            collectionViewFlowLayout.minimumInteritemSpacing = interItemSpacing
            
            collectionView.setCollectionViewLayout(collectionViewFlowLayout, animated: true)
        }
    }
}

extension SearchViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SearchCollectionViewCell.identifier, for: indexPath) as! SearchCollectionViewCell
        cell.searchImageView.image = self.images[indexPath.item].img
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("didSelectedItemAt: \(indexPath)")
    }
}

extension SearchViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return true
    }
}

extension SearchViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    /// returns the number of rows of data in one cylinder (ie: a date has 3 (jj/mm/aaaa) )
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerViewData.count
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if row > 0 {
            sort = sortingMethods[row - 1]
        } else {
            sort = ""
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerViewData[row]
    }

}
