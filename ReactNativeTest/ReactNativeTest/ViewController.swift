//
//  ViewController.swift
//  ReactNativeTest
//
//  Created by Chen Hao on 3/4/16.
//  Copyright © 2016 Chen Hao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        edgesForExtendedLayout = .Bottom
        
        NSNotificationCenter.defaultCenter().addObserver(
            self,
            selector: "notificationHandler:",
            name: "pushVC",
            object: .None)
    }

    func notificationHandler(notification: NSNotification) -> () {
        print("notificationHandler -> \(notification)")
        
        dispatch_async(dispatch_get_main_queue()) { [weak self] _ in
            self?.performSegueWithIdentifier("nativeSegue", sender: notification.userInfo?["k"])
        }
        
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let vc = segue.destinationViewController as? NativeViewController {
            vc.messageText = sender?.description
        }
        
    }

}

