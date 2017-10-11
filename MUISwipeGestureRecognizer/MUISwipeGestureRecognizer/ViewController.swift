//
//  ViewController.swift
//  MUISwipeGestureRecognizer
//
//  Created by pankx on 2017/10/11.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var myView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        myView.backgroundColor = UIColor.blue
        view.addSubview(myView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

