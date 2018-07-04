//
//  Audiobook.swift
//  RoughTrails
//
//  Created by Rajsekhar on 28/06/18.
//  Copyright © 2018 Rajsekhar. All rights reserved.
//

import Foundation

struct Audiobook {
    let name: String
    let author: String
    let coverImage: String
    
    init(dictionary: AudiobookJSON) {
        self.name = dictionary["name"] as! String
        self.author = dictionary["artistName"] as! String
        self.coverImage = dictionary["artworkUrl100"] as! String
        
        // ds;lfpa
    }
    
}
