//
//  ProfileHeaderView.swift
//  Makestagram
//
//  Created by Mariano Montori on 7/11/17.
//  Copyright © 2017 Mariano Montori. All rights reserved.
//

import UIKit

class ProfileHeaderView: UICollectionReusableView {
    weak var delegate: ProfileHeaderViewDelegate?
    
    @IBOutlet weak var postCountLabel: UILabel!
    @IBOutlet weak var followerCountLabel: UILabel!
    @IBOutlet weak var followingCountLabel: UILabel!
    @IBOutlet weak var settingsButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        settingsButton.layer.cornerRadius = 6
        settingsButton.layer.borderColor = UIColor.lightGray.cgColor
        settingsButton.layer.borderWidth = 1
    }
    
    @IBAction func settingsClicked(_ sender: UIButton) {
        delegate?.didTapSettingsButton(sender, on: self)
    }
}
