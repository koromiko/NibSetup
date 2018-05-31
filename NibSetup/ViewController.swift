//
//  ViewController.swift
//  NibSetup
//
//  Created by Neo on 31/05/2018.
//  Copyright © 2018 STH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "image")
        imageView.layer.cornerRadius = 4.0
        self.view.addSubview(imageView)
        return imageView
    }()

    lazy var socialToolsView: SocialToolsView = {
        let toolView: SocialToolsView = SocialToolsView.instantiateFromNib()
        toolView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(toolView)
        return toolView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupInitialView()
        setupConstraints()
    }

    func setupInitialView() {
        self.view.backgroundColor = UIColor.white
        self.navigationItem.title = "I love beer"
    }

    func setupConstraints() {
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            imageView.widthAnchor.constraint(equalToConstant: 150),
            imageView.heightAnchor.constraint(equalToConstant: 200),

            socialToolsView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 25),
            socialToolsView.centerXAnchor.constraint(equalTo: imageView.centerXAnchor, constant: 0),
            socialToolsView.widthAnchor.constraint(equalToConstant: 200),
            socialToolsView.heightAnchor.constraint(equalToConstant: 45)
            ])
    }
}

