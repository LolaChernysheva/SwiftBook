//
//  NetworkError.swift
//  MVC-N
//
//  Created by Лолита on 22.03.2021.
//  Copyright © 2021 Lolita Chernysheva. All rights reserved.
//

import Foundation

enum NetworkError: Error {
    case failInternetError
    case noInternetConnection
}
