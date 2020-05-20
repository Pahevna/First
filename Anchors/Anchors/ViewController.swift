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
        button.frame = CGRect(x: UIScreen.main.bounds.size.width - 280, y: UIScreen.main.bounds.size.height - 200, width: 200, height: 100)
        button.setTitle("Start", for: .normal)
        button.backgroundColor = .orange
        button.addTarget(self, action: #selector(pressedButton), for: .touchUpInside)
        return button
    }()
    
    let label: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: UIScreen.main.bounds.size.width - 250, y: UIScreen.main.bounds.size.height - 600, width: 300, height: 200)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        view.addSubview(button)
        view.addSubview(label)
    }

   
    @objc func pressedButton(_ sender: UIButton) {
         label.text = "Hello World"
    }
}

