//
//  ChatListCell.swift
//  Makestagram
//
//  Created by Mariano Montori on 7/12/17.
//  Copyright © 2017 Mariano Montori. All rights reserved.
//

import UIKit

class ChatListCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var lastMessageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func dismissButtonTapped(_ sender: UIBarButtonItem) {
        print("dismiss button tapped")
    }
}
