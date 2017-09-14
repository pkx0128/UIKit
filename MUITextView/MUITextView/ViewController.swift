//
//  ViewController.swift
//  MUITextView
//
//  Created by pankx on 2017/9/14.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //创建UITextView
        let myUITextView = UITextView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
        
        //设置位置屏幕中心
        myUITextView.center = view.center
        
        //设置字体颜色
        myUITextView.textColor = UIColor.red
        
        //设置背景颜色
        myUITextView.backgroundColor = UIColor.darkGray
        
        //设置字体大小
        myUITextView.font = UIFont.systemFont(ofSize: 24)
        
        //设置内容左对齐
        myUITextView.textAlignment = .left
        
        //设置初始文字
        myUITextView.text = "This is a UITextView"
        
        //设置键盘样式
        myUITextView.keyboardType = .default
        
        //设置返回按钮的样式
        myUITextView.returnKeyType = .default
        
        //设置是否可编辑
        myUITextView.isEditable = true
        
        //设置内容是否可以选取
        myUITextView.isSelectable = true
        
        //创建菜单项目
        let setMail = UIMenuItem(title: "邮件", action: #selector(ViewController.setMail))
        let setWeChat = UIMenuItem(title: "微信", action: #selector(ViewController.setWechat))
        
        //调用菜单的单例并增加新菜单项到菜单中
        let menu = UIMenuController.shared
        menu.menuItems = [setMail,setWeChat]
        
        //添加UITextView到视图
        view.addSubview(myUITextView)
        
        
    }
    //发送邮件
    func setMail() {
        print("setMail")
    }
    //发送微信
    func setWechat() {
        print("setWechat")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

