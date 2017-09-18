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
        
        //创建自定义switch
        let mySwitch1 = UISwitch()
        //设置位置
        mySwitch1.center = CGPoint(x: view.bounds.width * 0.5, y: view.bounds.height * 0.3)
        //设置打开状态时的颜色
        mySwitch1.onTintColor = UIColor.red
        //设置滑竿的颜色
        mySwitch1.thumbTintColor = UIColor.blue
        //设置关闭状态时的颜色
        mySwitch1.tintColor = UIColor.orange
        mySwitch1.addTarget(self, action: #selector(mysetSwitch), for: .valueChanged)
        view.addSubview(mySwitch1)
        
    }

    func mysetSwitch(sender: UISwitch){
        print(sender.isOn)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

