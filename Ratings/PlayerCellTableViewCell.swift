//
//  PlayerCellTableViewCell.swift
//  Ratings
//
//  Created by 菜 on 15/8/6.
//  Copyright © 2015年 菜. All rights reserved.
//

import UIKit

class PlayerCellTableViewCell: UITableViewCell {

    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var Game: UILabel!
    @IBOutlet weak var ImgView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
