//
//  PlayersTableViewController.swift
//  Ratings
//
//  Created by 菜 on 15/8/6.
//  Copyright © 2015年 菜. All rights reserved.
//

import UIKit

class PlayersTableViewController: UITableViewController {
    var players: [Player] = playersData
    
    //替换tableviwe数据源的方法
    // MARK: - Table view data source
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    //cell的具体内容 数据的填充
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PlayerCell", forIndexPath: indexPath) as! PlayerCellTableViewCell
        let player = players[indexPath.row] as Player
        
        cell.Name.text = player.name
        cell.Game.text = player.game
        cell.ImgView.image = imageForRatings(player.ratings)
        return cell
    }
    
    func imageForRatings(rating: Int) -> UIImage? {
        switch rating {
        case 1: return UIImage(named: "1StarSmall")
        case 2: return UIImage(named: "2StarsSmall")
        case 3: return UIImage(named: "3StarsSmall")
        case 4: return UIImage(named: "4StarsSmall")
        case 5: return UIImage(named: "5StarsSmall")
        default: return nil
        }
    }
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return false if you do not want the specified item to be editable.
    return true
    }
    */
    
    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
    if editingStyle == .Delete {
    // Delete the row from the data source
    tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
    } else if editingStyle == .Insert {
    // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }
    }
    */
    
    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
    
    }
    */
    
    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return NO if you do not want the item to be re-orderable.
    return true
    }
    */
}
