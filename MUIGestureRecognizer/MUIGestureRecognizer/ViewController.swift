//
//  ViewController.swift
//  MUIGestureRecognizer
//
//  Created by pankx on 2017/10/10.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit
// MARK: UIGestureRecognizer
class ViewController: UIViewController {
    /// myView
    var myView: UIView!
    /// myOtherView
    var myotherView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // doubleFinger
        let doubleFinger = UITapGestureRecognizer(target: self , action: #selector(doubleFingerEvent))
        //number of taps
        doubleFinger.numberOfTapsRequired = 1
        //number of fingers
        doubleFinger.numberOfTouchesRequired = 2
        view.addGestureRecognizer(doubleFinger)
    }
    
    @objc func doubleFingerEvent(tap: UITapGestureRecognizer) {
        print(#function)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

