//
//  Post.swift
//  Foro
//
//  Created by MacBookDesarrolloTecno01 on 7/31/20.
//  Copyright © 2020 MarvinCalvo. All rights reserved.
//

import Foundation

public struct PostListResult {
    var postsList: [PostResult] = []
    /*init(object: Any){
        if let data = object as? [Any]{
            for item in data{
                let newPost = PostResult(object: item)
                self.postsList.append(newPost)
            }
        }
    }*/
}

public struct CommentsListResult {
    var commentsList: [CommentResult] = []
    /*init(object: Any){
        if let data = object as? [Any]{
            for item in data{
                let newPost = CommentResult(object: item)
                self.commentsList.append(newPost)
            }
        }
    }*/
}

