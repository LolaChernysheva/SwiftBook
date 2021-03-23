//
//  GetCommentResponse.swift
//  MVC-N
//
//  Created by Лолита on 22.03.2021.
//  Copyright © 2021 Lolita Chernysheva. All rights reserved.
//

import Foundation

//заполнение массива комментариев
struct GetCommentResponse {
    let comments: [Comment]
    init(json: Any) throws {
        guard let array = json as? [[String: AnyObject]] else { throw NetworkError.failInternetError}
        var comments = [Comment]()
        for dictionary in array {
            guard let comment = Comment(dict: dictionary) else { continue }
            comments.append(comment)
        }
        self.comments = comments
    }
}
