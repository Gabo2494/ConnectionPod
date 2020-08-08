//
//  CommentResult.swift
//  Foro
//
//  Created by MacBookDesarrolloTecno01 on 8/1/20.
//  Copyright © 2020 MarvinCalvo. All rights reserved.
//

import Foundation

public struct CommentResult: Codable{
    var postId: Int
    var id: Int
    var name: String
    var email: String
    var body: String
    
    /*
    init(object: Any){
        if let data = object as? [String:Any]{
            self.body = data["body"]! as? String
            self.id = data["id"]! as? Int
            self.postId = data["postId"]! as? Int
            self.name = data["name"]! as? String
            self.email = data["email"]! as? String
        }
    }*/
}

