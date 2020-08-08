//
//  RequestManager.swift
//  Foro
//
//  Created by MacBookDesarrolloTecno01 on 7/31/20.
//  Copyright © 2020 MarvinCalvo. All rights reserved.
//

import Foundation
public class RequestManager{
    public init(){
        
    }
    
    public var connection:MyUrlConnection = MyUrlConnection(host: "https://jsonplaceholder.typicode.com/")
    
    public func getAllPost(succes:@escaping ([PostResult]?) -> Void){
        connection.execute(path: "posts", httpMethod: .get, completition: succes)
    }
    
    public func getPost(id: String, succes:@escaping (PostResult?) -> Void){
        connection.execute(path: "posts/\(id)", httpMethod: .get, completition: succes)
    }
    
    public func getAllComments(id: Int, succes:@escaping ([CommentResult]?) -> Void){
        connection.execute(path: "posts/\(id)/comments", httpMethod: .get, completition: succes)
    }
    
}
