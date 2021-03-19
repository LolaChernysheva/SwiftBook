//
//  CommentCell.swift
//  MVC-N
//
//  Created by Лолита on 19.03.2021.
//  Copyright © 2021 Lolita Chernysheva. All rights reserved.
//

import UIKit

class CommentCell: UITableViewCell {
    @IBOutlet weak var lable: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    //заполнение ячейки
    func configure(with comment: Comment) {
        self.lable.text = comment.name
        self.textView.text = comment.body
    }
    
}
