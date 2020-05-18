//
//  ViewController.swift
//  Anchors
//
//  Created by mac on 16.05.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Start", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .green
        return button
    }()
    
    let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        view.addSubview(button)
        view.addSubview(label)
        
        setupLabel ()
        setupButton ()
        
    }

    func setupButton() {
        button.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100).isActive = true
        button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/2 ).isActive = true
        button.heightAnchor.constraint(equalToConstant: 80).isActive = true
        button.addTarget(self, action: #selector(pressedButton), for: UIControl.Event.touchUpInside)
        
}
   func setupLabel() {
       label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 130).isActive = true
       label.topAnchor.constraint(equalTo: view.topAnchor, constant: 120).isActive = true
       label.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 2/3 ).isActive = true
       label.heightAnchor.constraint(equalToConstant: 80).isActive = true
   }
   
    @objc func pressedButton(_ sender: UIButton) {
         label.text = "Hello World"
        
    }
    
}

