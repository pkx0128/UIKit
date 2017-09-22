//
//  myViewController.swift
//  MUIPickerView
//
//  Created by pankx on 2017/9/22.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class myViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource  {

    let week = ["星期一","星期二","星期三","星期四","星期五","星期六","星期日"]
    let menu = ["早餐","午餐","晚餐"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //设置行数
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return week.count
        }
        
        return menu.count
    }
    
    //设置列数
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//        print("a")
        return 2
    }
    
    //设置每一行显示的内容
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
           return week[row]
        }
        
        return menu[row]
    }
    
    //获取选中的内容
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            print("row \(week[row])")
        }else{
            
            print("row \(menu[row])")
        }
    }
    
}
