//
//  ViewController.swift
//  MUIAlertController
//
//  Created by pankx on 2017/9/15.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //创建提示按钮
        let bnt1 = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 40))
        //设置按钮位置
        bnt1.center = CGPoint(x: view.bounds.width * 0.5, y: view.bounds.height * 0.3)
        //设置标题
        bnt1.setTitle("提示", for: .normal)
        //设置标题颜色
        bnt1.setTitleColor(UIColor.red, for: .normal)
        //添加按钮事件
        bnt1.addTarget(self, action: #selector(showSimpleInit), for: .touchUpInside)
        view.addSubview(bnt1)
        
        //创建发送按钮
        let bnt2 = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 40))
        //设置按钮位置
        bnt2.center = CGPoint(x: view.bounds.width * 0.5, y: view.bounds.height * 0.4)
        //设置标题
        bnt2.setTitle("发送", for: .normal)
        //设置标题颜色
        bnt2.setTitleColor(UIColor.red, for: .normal)
        //添加事件
        bnt2.addTarget(self, action: #selector(sentIint), for: .touchUpInside)
        view.addSubview(bnt2)
        
        //创建删除按钮
        let bnt3 = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 40))
        //设置按钮位置
        bnt3.center = CGPoint(x: view.bounds.width * 0.5, y: view.bounds.height * 0.5)
        //设置按钮标题
        bnt3.setTitle("删除", for: .normal)
        //设置字体颜色
        bnt3.setTitleColor(UIColor.red, for: .normal)
        //添加按钮事件
        bnt3.addTarget(self, action: #selector(delInit), for: .touchUpInside)
        view.addSubview(bnt3)
        
        //创建有登录按钮
        let bnt4 = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 40))
        //设置按钮位置
        bnt4.center = CGPoint(x: view.bounds.width * 0.5, y: view.bounds.height * 0.6)
        //设置按钮标题
        bnt4.setTitle("登录", for: .normal)
        //设置标题颜色
        bnt4.setTitleColor(UIColor.red, for: .normal)
        //添加按钮事件
        bnt4.addTarget(self, action: #selector(loginInit), for: .touchUpInside)
        view.addSubview(bnt4)
        
        //创建底弹按钮
        let bnt5 = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 40))
        //设置按钮位置
        bnt5.center = CGPoint(x: view.bounds.width * 0.5, y: view.bounds.height * 0.7)
        //设置按钮标题
        bnt5.setTitle("底弹", for: .normal)
        //设置标题颜色
        bnt5.setTitleColor(UIColor.red, for: .normal)
        //添加按钮事件
        bnt5.addTarget(self, action: #selector(bottomInit), for: .touchUpInside)
        view.addSubview(bnt5)
    }
    
    //提示按钮事件方法
    func showSimpleInit() {
        //创建提示框
        let alert1 = UIAlertController(title: "提示", message: "这是一个简单的提示框实例", preferredStyle: .alert)
        //创建提示框按钮
        let okAction = UIAlertAction(title: "确定", style: .default) { (UIAlertAction) in
            print("okAction")
        }
        //将按钮添加到提示框
        alert1.addAction(okAction)
        //显示提示框
        self.present(alert1, animated: true, completion: nil)
        
    }
    
    //发送按钮事件方法
    func sentIint() {
        //创建提示框
        let alert2 = UIAlertController(title: "提示", message: "是否发送", preferredStyle: .alert)
        //创建确定按钮
        let okBnt = UIAlertAction(title: "确定", style:.default) { (UIAlertAction) in
            print("okBnt")
        }
        //创建取消按钮
        let canBnt = UIAlertAction(title: "取消", style: .cancel) { (UIAlertAction) in
            print("canBnt")
        }
        //添加确定按钮到提示框
        alert2.addAction(okBnt)
        //添加取消按钮到提示框
        alert2.addAction(canBnt)
        //显示提示框
        self.present(alert2, animated: true, completion: nil)
    }
    
    ///删除按钮事件方法
    func delInit() {
        
        //创建提示框
        let alert3 = UIAlertController(title: "提示", message: "你确定删除吗？", preferredStyle: .alert)
        //创建提示框删除按钮
        let delBnt = UIAlertAction(title: "删除", style: .destructive) { (UIAlertAction) in
            print("delBnt")
        }
        //创建提示框取消按钮
        let canBnt = UIAlertAction(title: "取消", style: .cancel) { (UIAlertAction) in
            print("canBnt")
        }
        //添加删除按钮到提示框
        alert3.addAction(delBnt)
        //添加取消按钮到提示框
        alert3.addAction(canBnt)
        //显示提示框
        self.present(alert3, animated: true, completion: nil)
    }
    
    
    /// 登录按钮事件方法
    func loginInit() {
        //创建提示框控制器
        let loginAlert = UIAlertController(title: "登录", message: nil, preferredStyle: .alert)
        //添加用户名输入框到控制器
        loginAlert.addTextField { (UITextField) in
            UITextField.placeholder = "请输入用户名"
            UITextField.borderStyle = .roundedRect
        }
        //添加密码输入框到控制器
        loginAlert.addTextField { (UITextField) in
            UITextField.placeholder = "请输入密码"
            UITextField.isSecureTextEntry = true
            UITextField.borderStyle = .roundedRect
        }
        //创建登录按钮
        let loginAction = UIAlertAction(title: "登录", style: .default) { (UIAlertAction) in
            print("请求登录，用户名为)")
        }
        //创建取消按钮
        let canAction = UIAlertAction(title: "取消", style: .cancel) { (UIAlertAction) in
            print("取消登录")
        }
        //添加按钮到提示框
        loginAlert.addAction(loginAction)
        loginAlert.addAction(canAction)
        
        //显示提示框
        self.present(loginAlert, animated: true, completion: nil)
    }
    
    ///底部弹框按钮事件方法
    func bottomInit() {
        //创建提示框
        let bottomAlert = UIAlertController(title: "提示", message: "这个一个底部弹出框", preferredStyle: .actionSheet)
        //创建确定按钮
        let okAction = UIAlertAction(title: "确定", style: .default) { (UIAlertAction) in
            print("okAction")
        }
        //创建取消按钮
        let canAction = UIAlertAction(title: "取消", style: .cancel) { (UIAlertAction) in
            print("cancel")
        }
        //添加按钮到提示框
        bottomAlert.addAction(okAction)
        bottomAlert.addAction(canAction)
        self.present(bottomAlert, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

