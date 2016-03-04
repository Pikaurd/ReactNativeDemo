//
//  NativeViewController.swift
//  ReactNativeTest
//
//  Created by Chen Hao on 3/4/16.
//  Copyright © 2016 Chen Hao. All rights reserved.
//

import UIKit

class NativeViewController: UIViewController {
    
    var messageText: String!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if messageText == .None {
            messageText = "Native Message"
        }
        label.text = messageText

    }

}
