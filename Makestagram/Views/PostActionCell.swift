//
//  PostActionCell.swift
//  Makestagram
//
//  Created by Mariano Montori on 7/10/17.
//  Copyright © 2017 Mariano Montori. All rights reserved.
//

import UIKit

protocol PostActionCellDelegate: class {
    func didTapLikeButton(_ likeButton: UIButton, on cell: PostActionCell)
}

class PostActionCell: UITableViewCell {
    static let height: CGFloat = 46
    weak var delegate: PostActionCellDelegate?

    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var likeCountLabel: UILabel!
    @IBOutlet weak var timeAgoLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func likeClicked(_ sender: UIButton) {
        delegate?.didTapLikeButton(sender, on: self)
    }
}
