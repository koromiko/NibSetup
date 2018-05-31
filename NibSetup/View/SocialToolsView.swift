//
//  SocialToolsView.swift
//  NibSetup
//
//  Created by Neo on 31/05/2018.
//  Copyright © 2018 STH. All rights reserved.
//

import UIKit

class SocialToolsView: UIView {

    @IBOutlet weak var likeBtn: UIButton!
    @IBOutlet weak var shareBtn: UIButton!
    @IBOutlet weak var openBtn: UIButton!
    
    @IBAction func likeBtnPressed(_ sender: Any) {
    }
    @IBAction func shareBtnPressed(_ sender: Any) {
    }
    @IBAction func openBtnPressed(_ sender: Any) {
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.borderColor = UIColor.darkGray.cgColor
        self.layer.borderWidth = 1
        self.layer.cornerRadius = 3
    }
}
