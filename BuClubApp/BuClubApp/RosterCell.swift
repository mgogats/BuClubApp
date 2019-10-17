//
//  RosterCell.swift
//  BuClubApp
//
//  Created by Max Gogats on 10/17/19.
//  Copyright © 2019 Gogats. All rights reserved.
//

import UIKit

class RosterCell: UITableViewCell {
    
    @IBOutlet weak var PlayerPicture: UIImage!
    @IBOutlet weak var PlayerName: UILabel!
    @IBOutlet weak var PlayerNum: UILabel!
    
    func setPlayer(player: Player){
        PlayerPicture = player.playerImage
        PlayerName.text = player.playerName
        PlayerNum.text = player.playerNumber
    }
}
