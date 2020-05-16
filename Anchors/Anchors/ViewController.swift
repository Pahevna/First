//
//  ViewController.swift
//  Anchors
//
//  Created by mac on 16.05.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Start", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .green
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        view.addSubview(label)
        view.addSubview(button)
        
        setupLabel ()
        setupButton ()
       
    }

    func setupLabel() {
        label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 130).isActive = true
        label.topAnchor.constraint(equalTo: view.topAnchor, constant: 120).isActive = true
        label.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 2/3 ).isActive = true
        label.heightAnchor.constraint(equalToConstant: 80).isActive = true
    }
    
    func setupButton() {
        button.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100).isActive = true
        button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/2 ).isActive = true
        button.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
}
   
    func pressedButton(_ sender: UIButton) {
        label.text = "Hello World"
    }
    
}

