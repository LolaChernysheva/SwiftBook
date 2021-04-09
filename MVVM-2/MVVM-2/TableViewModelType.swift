//
//  TableViewModelType.swift
//  MVVM-2
//
//  Created by Лолита on 02.04.2021.
//  Copyright © 2021 Lolita Chernysheva. All rights reserved.
//

import Foundation

protocol TableViewModelType {
    var numberOfRows: Int { get }
    var profiles: [Profile] { get }
}
