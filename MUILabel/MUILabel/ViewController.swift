//
//  ViewController.swift
//  MUILabel
//
//  Created by pankx on 2017/9/12.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //创建UILabel
        let mLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 80))
        
        //设置UILabel的位置
        mLabel.center = view.center
        
        //设置文字
        mLabel.text = "MUILabel123456789abcdefghigk"
        
        //设置颜色
        mLabel.textColor = UIColor.orange
        
        //设置字体与大小
        mLabel.font = UIFont(name: "Helvetica-Light", size: 14)
        
       //修改设置字体大小
        mLabel.font = mLabel.font.withSize(20)
        
        //使用系统字体并设置大小
        mLabel.font = UIFont.systemFont(ofSize: 24)
        
        //设置文字的位置居中
        mLabel.textAlignment = .center
        
        //设置内容文字的行数
        mLabel.numberOfLines = 1
        
        //文字过多时的显示方式
        mLabel.lineBreakMode = .byTruncatingMiddle
        
        //设置阴影的颜色
        mLabel.shadowColor = UIColor.red
        
        //设置阴影的偏移量
        mLabel.shadowOffset = CGSize(width: 2, height: 2)
        
        //设置背景颜色
        mLabel.backgroundColor = UIColor.blue
        
        view.addSubview(mLabel)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

