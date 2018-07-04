//
//  CollectionViewCell.swift
//  RoughTrails
//
//  Created by Rajsekhar on 28/06/18.
//  Copyright © 2018 Rajsekhar. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var imageLabel: UILabel!
    func displayContent(image:UIImage, title :String){
        imageView.image = image
        imageLabel.text = title
    }
}
