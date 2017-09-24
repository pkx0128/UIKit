//
//  ViewController.swift
//  MUIActivityIndicatorView
//
//  Created by pankx on 2017/9/24.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myIndator: UIActivityIndicatorView!
    var mybutton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //创建UIActivityIndicatorView实例
        myIndator = UIActivityIndicatorView(activityIndicatorStyle: .whiteLarge)
        //设置位置
        myIndator.center = view.center
        //设置背景颜色
        myIndator.backgroundColor = UIColor.white
        //设置进度条的颜色
        myIndator.color = UIColor.darkGray
        view.addSubview(myIndator)
        
        //创建按钮
        mybutton = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        //设置位置
        mybutton.center = CGPoint(x: view.bounds.width * 0.5, y: view.bounds.height * 0.6)
        //设置标题
        mybutton.setTitle("开始", for: .normal)
        //设置标题颜色
        mybutton.setTitleColor(UIColor.blue, for: .normal)
        //添加按钮事件
        mybutton.addTarget(self, action: #selector(click), for: .touchUpInside)
        view.addSubview(mybutton)
    
    }
    //按钮事件方法
    func click() {
        
        if myIndator.isAnimating {
            //停止进度条
            myIndator.stopAnimating()
            mybutton.setTitle("开始", for: .normal)
            
        }else {
            //开始进度条
            myIndator.startAnimating()
            mybutton.setTitle("结束", for: .normal)
            
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

