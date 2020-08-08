//
//  PostResult.swift
//  Foro
//
//  Created by MacBookDesarrolloTecno01 on 8/1/20.
//  Copyright © 2020 MarvinCalvo. All rights reserved.
//

import Foundation

public struct PostResult: Codable{
    var userId: Int
    var id: Int
    var title: String
    var body: String
    
    init(){
        self.body = ""
        self.id = -1
        self.title = ""
        self.userId = -1
    }
}
