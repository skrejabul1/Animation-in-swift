//
//  ViewController.swift
//  Animations
//
//  Created by Clicklabs117 on 1/23/15.
//  Copyright (c) 2015 Clicklabs117. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    
    var counter = 1
    
    var counter3 = 0

    @IBOutlet var goku: UIImageView!
    
    @IBAction func buttonPressed(sender: AnyObject) {
        
        counter++
        
        counter3++
        
        if counter3 == 5  {
            
            counter3 = 0
        }
        
        if counter == 9 {
            
            counter = 1
        }
        goku.image = UIImage(named: "frame\(counter).png")
        
        if counter3 == 1 {
        
        goku.center = CGPointMake(self.goku.center.x - 400, self.goku.center.y - 500)
            UIView.animateWithDuration(1, animations: {self.goku.center = CGPointMake(self.goku.center.x + 400, self.goku.center.y + 500)})
        
        } else if counter3 == 2 {
        
        goku.center = CGPointMake(self.goku.center.x - 400, self.goku.center.y + 500)
            UIView.animateWithDuration(1, animations: {self.goku.center = CGPointMake(self.goku.center.x + 400, self.goku.center.y - 400)})
        
        } else if counter3 == 3 {
        
        goku.center = CGPointMake(self.goku.center.x + 400, self.goku.center.y - 500)
            UIView.animateWithDuration(1, animations: {self.goku.center = CGPointMake(self.goku.center.x - 400, self.goku.center.y + 400)})
        
        } else if counter3 == 4 {
        
        goku.center = CGPointMake(self.goku.center.x + 400, self.goku.center.y + 500)
            UIView.animateWithDuration(1, animations: {self.goku.center = CGPointMake(self.goku.center.x - 400, self.goku.center.y - 400)})
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("animation"), userInfo: nil, repeats: true)
        
    }
    
    func animation() {
        counter++
        
        if counter == 9 {
            
            counter = 1
        }
        goku.image = UIImage(named: "frame\(counter).png")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

