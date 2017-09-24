//
//  ViewController.swift
//  MUIProgreeView
//
//  Created by pankx on 2017/9/24.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myprogree:UIProgressView!
    var mybutton: UIButton!
    var count = 0
    var comple = 100
    var mytimer:Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        //创建myprogree
        myprogree = UIProgressView(progressViewStyle: .default)
        //设置位置
        myprogree.center = view.center
        //设置进度条的颜色
        myprogree.progressTintColor = UIColor.red
        //设置未完成的进度条的颜色
        myprogree.trackTintColor = UIColor.blue
        //设置进度条的值
        myprogree.progress = 0
        view.addSubview(myprogree)
        
        //创建mybutton
        mybutton = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        //设置标题
        mybutton.setTitle("重置", for: .normal)
        //设置标题颜色
        mybutton.setTitleColor(UIColor.blue, for: .normal)
        //设置按钮位置
        mybutton.center = CGPoint(x: view.bounds.width * 0.5, y: view.bounds.height * 0.6)
        //给按钮添加事件
        mybutton.addTarget(self, action: #selector(rest), for: .touchUpInside)
        view.addSubview(mybutton)
        self.rest()
    }
    //按钮事件方法
    func rest() {
        //设置按钮不可用
        mybutton.isEnabled = false
        //设置进度条为0
        myprogree.progress = 0
        //创建定时器
        mytimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showprogree), userInfo: nil, repeats: true)
    }
    //定时器调用的方法
    func showprogree() {
        //设置count的值
        count += 1
        //设置进度条的值
        myprogree.progress = Float(count) / Float(comple)
//        print(count)
        if count >= comple {
            //设置按钮可用
            mybutton.isEnabled = true
            //移除定时器
            mytimer.invalidate()
            //设置count为0
            count = 0
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

