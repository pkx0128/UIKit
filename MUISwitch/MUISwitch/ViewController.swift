//
//  ViewController.swift
//  MUISwitch
//
//  Created by pankx on 2017/9/18.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //创建mySwitch
        let mySwitch = UISwitch()
        //设置位置
        mySwitch.center = view.center
        view.addSubview(mySwitch)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

