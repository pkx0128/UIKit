//
//  ViewController.swift
//  demo1
//
//  Created by pankx on 2017/9/12.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// 创建一个UIView
        let firstView = UIView(frame:CGRect(x: 0, y: 0, width: 100, height: 100))
        firstView.center = view.center//CGPoint(x: 100, y: 100)
        firstView.backgroundColor = UIColor.blue
        
        view.addSubview(firstView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

