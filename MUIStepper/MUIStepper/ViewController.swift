//
//  ViewController.swift
//  MUIStepper
//
//  Created by pankx on 2017/9/24.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myLabel: UILabel!
    var myStepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        //创建myLabel
        myLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 40))
        //设置位置
        myLabel.center = CGPoint(x: view.bounds.width * 0.5, y: view.bounds.height * 0.4)
        //设置初始值
        myLabel.text = "0"
        //设置内容居中
        myLabel.textAlignment = .center
        //设置字体颜色
        myLabel.textColor = UIColor.red
        view.addSubview(myLabel)
        
        //创建myStepper
        myStepper = UIStepper()
        //设置位置
        myStepper.center = view.center
        //设置按住自动增/减值
        myStepper.autorepeat = true
        //设置最小值
        myStepper.minimumValue = 0
        //设置最大值
        myStepper.maximumValue = 100
        //设置改变的步长
        myStepper.stepValue = 2
        //设置是否加减到最大最小值后从头开始
        myStepper.wraps = true
        //添加事件
        myStepper.addTarget(self, action: #selector(addValue), for: .valueChanged)
        view.addSubview(myStepper)
    }
    
    //事件相关方法
    func addValue() {
        myLabel.text = "\(myStepper.value)"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

