//
//  RosterViewController.swift
//  BuClubApp
//
//  Created by Max Gogats on 10/17/19.
//  Copyright © 2019 Gogats. All rights reserved.
//

import UIKit
import Foundation

class RosterViewController : UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    
    var players : [Player] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        players = createPlayerArray()
        
    }
    
    func createPlayerArray() -> [Player] {
        
        var tempPlayers: [Player] = []
        
        //parse data from mlb.com in the future, for now I will simply add a couple examples
        let tanaka1 = UIImage(named: "tanaka")
        let p1 = Player(image: tanaka1!, playerName: "Masahiro Tanaka", playerNumber: "19")
        
        tempPlayers.append(p1)
        return tempPlayers
        }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print (players.count)
        return players.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let player = players[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell") as! RosterCell
        
        cell.setPlayer(player: player)
        
       
        
        return cell
            
    }
}
    
    


