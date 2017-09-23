//
//  ViewController.swift
//  MDatePickerInTextField
//
//  Created by pankx on 2017/9/23.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //定义mytext
    var mytext: UITextField!
    //定义myDatePicker
    var myDatePicker: UIDatePicker!
    //创建DateFormatter实例
    let format = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //设置时间格式
        format.dateFormat = "yyyy-MM-dd HH:mm"
        
        //创建UIDatePicker实例
        myDatePicker = UIDatePicker()
        //设置datepicker模式
        myDatePicker.datePickerMode = .dateAndTime
        //设置地区
        myDatePicker.locale = Locale(identifier: "zh")
        //增加valueChanged事件
        myDatePicker.addTarget(self, action: #selector(myvalueChange), for: .valueChanged)
        
        //创建UItextField
        mytext = UITextField(frame:CGRect(x: 0, y: 0, width: view.bounds.width, height: 40))
        //设置位置
        mytext.center = CGPoint(x: view.bounds.width * 0.5, y: view.bounds.height * 0.3)
        //设置键盘视图
        mytext.inputView = myDatePicker
        //设置内容居中
        mytext.textAlignment = .center
        //设置背影颜色
        mytext.backgroundColor = UIColor.blue
        //设置初始内容
        mytext.text = format.string(from: Date())
        view.addSubview(mytext)
        
        //添加手势
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapkey))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
        
    }
    //隐藏inputView方法
    func tapkey() {
        mytext.resignFirstResponder()
    }
    
    //选取值相关方法
    func myvalueChange() {
        mytext.text = format.string(from: myDatePicker.date)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

