//
//  ReactView.swift
//  ReactNativeTest
//
//  Created by Chen Hao on 3/4/16.
//  Copyright © 2016 Chen Hao. All rights reserved.
//

import UIKit

class ReactView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        setup()
    }
    
    private func setup() -> () {
        let jsCodeLocation = NSURL(string: "http://localhost:8081/index.ios.bundle?platform=ios")
        let rootView = RCTRootView(
            bundleURL: jsCodeLocation
            , moduleName: "SimpleApp"
            , initialProperties: .None
            , launchOptions: .None
        )
        rootView.frame = bounds
        addSubview(rootView)
        rootView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
    }
}
