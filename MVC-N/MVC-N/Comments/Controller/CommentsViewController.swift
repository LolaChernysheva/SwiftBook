//
//  CommentsViewController.swift
//  MVC-N
//
//  Created by Лолита on 18.03.2021.
//  Copyright © 2021 Lolita Chernysheva. All rights reserved.
//

import UIKit

class CommentsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    


}

extension CommentsViewController:  UITableViewDelegate {
    
    
}

extension CommentsViewController:  UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }
    
    
    
}




