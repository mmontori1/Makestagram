//
//  Constants.swift
//  Makestagram
//
//  Created by Mariano Montori on 7/6/17.
//  Copyright © 2017 Mariano Montori. All rights reserved.
//

import Foundation

struct Constants {
    struct PostCell {
        static let PostImageCell = "PostImageCell"
    }
    struct Segue {
        static let toCreateUsername = "toCreateUsername"
    }
    struct FirDB {
        static let username = "username"
        static let users = "users"
        static let posts = "posts"
    }
    struct FirPost {
        static let imageURL = "image_url"
        static let imageHeight = "image_height"
        static let createdAgo = "created_at"
    }
    struct UserDefaults {
        static let currentUser = "currentUser"
        static let uid = "uid"
        static let username = "username"
    }
}
