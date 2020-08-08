//
//  MyUrlConnection.swift
//  Foro
//
//  Created by MacBookDesarrolloTecno01 on 7/31/20.
//  Copyright © 2020 MarvinCalvo. All rights reserved.
//

import Foundation

import UIKit

public enum httpCode: CustomStringConvertible {
    case get
    case put
    case delete
    case post
    
    public var description: String {
        switch self {
        case .get:
            return "GET"
        case .delete:
            return "DELETE"
        case .post:
            return "POST"
        case .put:
            return "PUT"
        }
    }
}

//typealias Result = (T?) -> Void

public class MyUrlConnection: NSObject {
    
    var session:URLSession?
    var request:URLRequest?
    var apiHost:String
    var delegate:CompletitionDelegate?
    
    public init(host:String) {
        self.apiHost = host
        session = URLSession.shared
    }
    
    public func execute(path:String, httpMethod:httpCode, httpRequestParams:[String:String]? = nil) {
        request = URLRequest(url: URL(string: apiHost + path)!)
        request?.httpMethod = httpMethod.description
        
        if let params = httpRequestParams {
            for param in params {
                request?.setValue(param.value, forHTTPHeaderField: param.key)
            }
        }
        
        session?.dataTask(with: request!) { (data, response, error) in
            
            do {
                let jsonData = try JSONSerialization.jsonObject(with: data!, options: [])
                
                DispatchQueue.main.async {
                    if let delegate = self.delegate {
                        delegate.didFinish(data: jsonData)
                    }
                }
            } catch let error{
                print(error.localizedDescription)
            }
        }.resume()
        
    }
    
    public func execute<T : Decodable>(path:String, httpMethod:httpCode, completition:@escaping (T?) -> Void, httpRequestParams:[String:String]? = nil) {
        request = URLRequest(url: URL(string: apiHost + path)!)
        request?.httpMethod = httpMethod.description
        
        if let params = httpRequestParams {
            for param in params {
                request?.setValue(param.value, forHTTPHeaderField: param.key)
            }
        }
        
        session?.dataTask(with: request!) { (data, response, error) in
            
            if error != nil{
                print(error!.localizedDescription)
            }
            else {
                do {
                    let jsonData = try JSONDecoder().decode(T.self, from: data!)
                                   
                    DispatchQueue.main.async {
                        completition(jsonData)
                    }
                } catch let error{
                    print(error.localizedDescription)
                }
            }
        }.resume()
        
    }

}
