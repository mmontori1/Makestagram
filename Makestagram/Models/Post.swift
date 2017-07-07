//
//  Post.swift
//  Makestagram
//
//  Created by Mariano Montori on 7/7/17.
//  Copyright © 2017 Mariano Montori. All rights reserved.
//

import UIKit
import FirebaseDatabase.FIRDataSnapshot

class Post {
    var key: String?
    let imageURL: String
    let imageHeight: CGFloat
    let creationDate: Date
    var dictValue: [String : Any] {
        let createdAgo = creationDate.timeIntervalSince1970
        
        return [Constants.FirPost.imageURL : imageURL,
                Constants.FirPost.imageHeight : imageHeight,
                Constants.FirPost.createdAgo : createdAgo]
    }
    
    init(imageURL: String, imageHeight: CGFloat) {
        self.imageURL = imageURL
        self.imageHeight = imageHeight
        self.creationDate = Date()
    }
}
