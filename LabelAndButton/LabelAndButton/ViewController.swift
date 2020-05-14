//
//  ViewController.swift
//  LabelAndButton
//
//  Created by mac on 14.05.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        Label.isHidden = true
        Label.font = Label.font.withSize(35)
        Label.textColor = UIColor.red
        
        Button.setTitle("Get result", for: .normal)
        Button.setTitleColor(.blue, for: .normal)
        Button.backgroundColor = .green
        
    }

    @IBAction func pressedButton(_ sender: UIButton) {
        Label.isHidden = false
        Label.text = "Hello, World!"
    }
    
}

