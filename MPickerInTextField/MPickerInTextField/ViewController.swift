//
//  ViewController.swift
//  MPickerInTextField
//
//  Created by pankx on 2017/9/22.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    //定义picker的数据数组
    let week = ["星期日","星期一","星期二","星期三","星期四","星期五","星期六"]
    //定义mytext
    fileprivate var mytext: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        //创建myicker
        let mypicker = UIPickerView()
        //设置代理
        mypicker.delegate = self
        //设置数据源
        mypicker.dataSource = self
        
        //创建mytext
        mytext = UITextField(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 80))
        //设置位置
        mytext.center = CGPoint(x: view.bounds.width * 0.5, y: view.bounds.height * 0.3)
        //设置内容居中
        mytext.textAlignment = .center
        //设置键盘为mypicker
        mytext.inputView = mypicker
        //设置初始值为week[0]的值
        mytext.text = week[0]
        //设置背景颜色
        mytext.backgroundColor = UIColor.darkGray
        view.addSubview(mytext)
    }
    //设置picker的列数
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    //设置picker内容行数据
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return week.count
    }
    //设置picker内容
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return week[row]
    }
    //把picker选中的内容设置到mytext
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        mytext.text = week[row]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

