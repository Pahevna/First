//
//  ViewController.swift
//  UITableView
//
//  Created by mac on 26.06.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

struct TopFootballers {
    var fistName: String
    var lastName: String
    var biography: String
}

let player1 = TopFootballers(fistName: "Lionel", lastName: "Messi", biography: "is an Argentine professional footballer who plays as a forward and captains both Spanish club Barcelona and the Argentina national team. Often considered the best player in the world and widely regarded as one of the greatest players of all time, Messi has won a record six Ballon d'Or awards")
let player2 = TopFootballers(fistName: "Cristiano", lastName: "Ronaldo", biography: "is a Portuguese professional footballer who plays as a forward for Serie A club Juventus and captains the Portugal national team. Often considered the best player in the world and widely regarded as one of the greatest players of all time, Ronaldo has won five Ballons d'Or and four European Golden Shoes, both of which are records for a European player")
let player3 = TopFootballers(fistName: "Zinedine", lastName: "Zidane", biography: "is a French former professional football player who played as an attacking midfielder. He is the current manager of La Liga club Real Madrid")

var array = [player1,player2,player3]

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet weak var tableView: UITableView!

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
       }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! FootballersTableViewCell
        cell.textLabel?.text = array[indexPath.row].fistName + " " + array[indexPath.row].lastName
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "showBiography", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
