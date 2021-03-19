//
//  NetworkService.swift
//  MVC-N
//
//  Created by Лолита on 19.03.2021.
//  Copyright © 2021 Lolita Chernysheva. All rights reserved.
//

import Foundation

class NetworkService {
    private init() {}
    static let shared = NetworkService()
    
    //метод для получения данных
    public func getData(completion: @escaping (Any) -> ()){
        let session = URLSession.shared
        session.dataTask(with: URL(string: "https://jsonplaceholder.typicode.com/posts/1/comments")!) { (data, response, error) in
            //проверка, получены ли данные
            guard let  data = data else { return }
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                print(json)
            } catch {
               print(error)
            }
        }.resume()
    }
}
