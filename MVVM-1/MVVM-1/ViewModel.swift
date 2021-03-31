//
//  ViewModel.swift
//  MVVM-1
//
//  Created by Лолита on 31.03.2021.
//  Copyright © 2021 Ivan Akulov. All rights reserved.
//

import Foundation

class ViewModel {
    
    private var profile = Profile(name: "John", secondName: "Smith", age: 33)
    
    var name: String {
        return profile.name
    }
    
    var secondName: String {
        return profile.secondName
    }
    
    var age: String {
        return String(describing: profile.age)
    }
}
