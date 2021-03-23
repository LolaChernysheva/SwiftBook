//
//  NetworkService.swift
//  MVC-N
//
//  Created by Лолита on 19.03.2021.
//  Copyright © 2021 Lolita Chernysheva. All rights reserved.
//

import Foundation

//общий менеджер, который не имеет представления, по какому адресу ему нужно обращаться
class NetworkService {
    private init() {}
    static let shared = NetworkService()
    
    //метод для получения данных
    public func getData(url: URL, completion: @escaping (Any) -> ()){
        let session = URLSession.shared
        //получение данных
        session.dataTask(with: url) { (data, response, error) in
            //проверка, получены ли данные
            guard let  data = data else { return }
            
            do {
                //получение  JSON 
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                DispatchQueue.main.async {
                    completion(json)
                }
            } catch {
               print(error)
            }
        }.resume()
    }
}
