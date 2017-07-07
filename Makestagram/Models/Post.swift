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
    
    init?(snapshot: DataSnapshot) {
        guard let dict = snapshot.value as? [String : Any],
            let imageURL = dict[Constants.FirPost.imageURL] as? String,
            let imageHeight = dict[Constants.FirPost.imageHeight] as? CGFloat,
            let createdAgo = dict[Constants.FirPost.createdAgo] as? TimeInterval
            else { return nil }
        
        self.key = snapshot.key
        self.imageURL = imageURL
        self.imageHeight = imageHeight
        self.creationDate = Date(timeIntervalSince1970: createdAgo)
    }
}
