//
//  PlayersDataSourse.swift
//  Ratings
//
//  Created by 菜 on 15/8/6.
//  Copyright © 2015年 菜. All rights reserved.
//

import Foundation

class Player: NSObject {
    
    var name: String
    var game: String
    var ratings: Int
    
    init(name:String, game:String, ratings:Int) {
        self.name = name
        self.game = game
        self.ratings = ratings
        super.init()
    }
}

var playersData = [ Player(name: "Jacob", game: "wow", ratings: 5), Player(name: "Tom", game: "cs", ratings: 3),Player(name: "Cara", game: "card", ratings: 1) ]


