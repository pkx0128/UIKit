//
//  ViewController.swift
//  MUILongPressGestureRecognizer
//
//  Created by pankx on 2017/10/11.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let longpress = UILongPressGestureRecognizer(target: self, action: #selector(longPressEvent))
        view.addGestureRecognizer(longpress)
    }
    
   @objc func longPressEvent(longPress: UILongPressGestureRecognizer) {
        if longPress.state == .began {
            print("longPress Began")
        }else if longPress.state == .ended {
            print("longPress End")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

