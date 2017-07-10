//
//  PostHeaderCell.swift
//  Makestagram
//
//  Created by Mariano Montori on 7/10/17.
//  Copyright © 2017 Mariano Montori. All rights reserved.
//

import UIKit

class PostHeaderCell: UITableViewCell {
    static let height: CGFloat = 54

    @IBOutlet weak var usernameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    @IBAction func optionsClicked(_ sender: Any) {
        print("options button tapped")
    }
}
