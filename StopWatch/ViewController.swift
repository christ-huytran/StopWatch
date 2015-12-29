//
//  ViewController.swift
//  StopWatch
//
//  Created by Huy Tran on 12/29/15.
//  Copyright © 2015 chtran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    var time = 0
    
    @IBOutlet weak var timerLabel: UILabel!
    
    func incrementTimer() {
        time++
        
        timerLabel.text = "\(time)"
    }
    
    @IBAction func play(sender: UIBarButtonItem) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("incrementTimer"), userInfo: nil, repeats: true)
    }
    
    @IBAction func pause(sender: UIBarButtonItem) {
        timer.invalidate()
    }
    
    @IBAction func reset(sender: UIBarButtonItem) {
        timer.invalidate()
        
        time = 0
        
        timerLabel.text = "0"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

