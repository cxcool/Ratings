//
//  TimeViewController.swift
//  Ratings
//
//  Created by 菜 on 15/8/21.
//  Copyright © 2015年 菜. All rights reserved.
//

import UIKit

class TimeViewController: UIViewController {

    var timeCounter: String = "" {
        didSet {
            timeLabel.text = timeCounter
        }
    }
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var timeSwitch: UISwitch!
    
    var timer: NSTimer?
    @IBAction func timeSwitcher(sender: UISwitch) {
        if sender.on {
            timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "addCount", userInfo: nil, repeats: true)
        }else {
            timer?.invalidate()
            timer = nil
        }
    }
    
    var count: Int = 0
    func addCount() {
        count++
        print(count)
        timeCounter = count.description
        if count == 5{
            let alert: UIAlertController = UIAlertController(title: "time is up", message: "you are running out of time", preferredStyle: UIAlertControllerStyle.Alert)
            let alertCancelAction = UIAlertAction(title: "取消", style: UIAlertActionStyle.Default, handler: nil)
            alert.addAction(alertCancelAction)
            self.presentViewController(alert, animated: true, completion: nil)
            timer?.invalidate()
            timer = nil
            timeSwitch.on = false
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
