//
//  ViewController.swift
//  MVVM-1
//
//  Created by Lolita Chernyheva on 27/03/2021.
//  Copyright © 2021 Ivan Akulov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var secondNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    var profile: Profile? {
        didSet {
            guard let profile = profile else { return }
            
            self.nameLabel.text = profile.name
            self.secondNameLabel.text = profile.secondName
            self.ageLabel.text = "\(profile.age)"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        profile = Profile(name: "John", secondName: "Smith", age: 33)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

