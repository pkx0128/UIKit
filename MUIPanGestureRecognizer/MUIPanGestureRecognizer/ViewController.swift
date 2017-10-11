//
//  ViewController.swift
//  MUIPanGestureRecognizer
//
//  Created by pankx on 2017/10/11.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var panView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //panView
        panView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        panView.center = view.center
        panView.backgroundColor = UIColor.blue
        view.addSubview(panView)
        
        //pan
        let pan = UIPanGestureRecognizer(target: self, action: #selector(panEvent))
        pan.maximumNumberOfTouches = 1
        pan.maximumNumberOfTouches = 1
        panView.addGestureRecognizer(pan)
    }
    
    /// panEvent Method
    ///
    /// - Parameter pan: UIPanGestureRecognizer
    @objc func panEvent(pan: UIPanGestureRecognizer) {
        panView.center = pan.location(in: self.view)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

