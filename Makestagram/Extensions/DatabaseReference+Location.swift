//
//  DatabaseReference+Location.swift
//  Makestagram
//
//  Created by Mariano Montori on 7/10/17.
//  Copyright © 2017 Mariano Montori. All rights reserved.
//

import Foundation
import FirebaseDatabase

extension DatabaseReference {
    enum MGLocation {
        case root
        
        case posts(uid: String)
        case showPost(uid: String, postKey: String)
        case newPost(currentUID: String)
        
        case users
        case showUser(uid: String)
        case timeline(uid: String)
        
        case followers(uid: String)
        case following(uid: String)
        
        case likes(postKey: String, currentUID: String)
        case isLiked(postKey: String)
        case likesCount(posterUID: String, postKey: String)
        
        case postCount(uid: String)
        case followerCount(uid: String)
        case followingCount(uid: String)
        
        case userChats(uid: String)
        case chatMessages(key: String)
        
        func asDatabaseReference() -> DatabaseReference {
            let root = Database.database().reference()
            
            switch self {
            case .root:
                return root
                
            case .posts(let uid):
                return root.child("posts").child(uid)
                
            case let .showPost(uid, postKey):
                return root.child("posts").child(uid).child(postKey)
                
            case .newPost(let currentUID):
                return root.child("posts").child(currentUID).childByAutoId()
                
            case .users:
                return root.child("users")
                
            case .showUser(let uid):
                return root.child("users").child(uid)
                
            case .timeline(let uid):
                return root.child("timeline").child(uid)
                
            case .followers(let uid):
                return root.child("followers").child(uid)
                
            case .following(let uid):
                return root.child("following").child(uid)
                
            case let .likes(postKey, currentUID):
                return root.child("postLikes").child(postKey).child(currentUID)
                
            case .isLiked(let postKey):
                return root.child("postLikes").child(postKey)
                
            case let .likesCount(posterUID, postKey):
                return root.child("posts").child(posterUID).child(postKey).child("likes_count")
            case .postCount(let uid):
                return root.child("users").child(uid).child("post_count")
            case .followerCount(let uid):
                return root.child("users").child(uid).child("follower_count")
            case .followingCount(let uid):
                return root.child("users").child(uid).child("following_count")
            case .userChats(let uid):
                return root.child("chats").child(uid)
            case .chatMessages(let key):
                return root.child("messages").child(key)
            }
        }
    }
    
    static func toLocation(_ location: MGLocation) -> DatabaseReference {
        return location.asDatabaseReference()
    }
}
