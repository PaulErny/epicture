//
//  SearchCollectionViewCell.swift
//  Epicture
//
//  Created by Victor maurin on 21/10/2020.
//  Copyright © 2020 Paul Erny. All rights reserved.
//

import UIKit

class SearchCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "SearchCollectionViewCell"

    @IBOutlet weak var searchImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    public func configure(with image: UIImage) {
        searchImageView.image = image
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "SearchCollectionViewCell", bundle: nil)
    }

}
