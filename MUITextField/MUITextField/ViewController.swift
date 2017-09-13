//
//  ViewController.swift
//  MUITextField
//
//  Created by pankx on 2017/9/12.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        //创建UITextField
        let myTextField = UITextField(frame: CGRect(x: 0, y: 0, width: 200, height: 20))
        
        //设置位置
        myTextField.center = view.center
        
        //设置初始文字
        myTextField.placeholder = "请输入用户名"
        
        //设置圆角输入框
        myTextField.borderStyle = .roundedRect
        
        //设置编辑时显示清除按钮
        myTextField.clearButtonMode = .whileEditing
        
        //设置键盘模式
        myTextField.keyboardType = .emailAddress
        
        //设置键盘的return模式
        myTextField.returnKeyType = .done
        
        //设置文字颜色
        myTextField.textColor = UIColor.blue
        
        //设置背景颜色
        myTextField.backgroundColor = UIColor.darkGray
        
        //设置代理
        myTextField.delegate = self
        
        //增加到视图
        view.addSubview(myTextField)
    }
    
    /// 设置返回按钮
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        view.endEditing(true)
        return true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

