//
//  ViewController.swift
//  MUIDatePicker
//
//  Created by pankx on 2017/9/18.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myLabel: UILabel!
    var formar: DateFormatter!
    override func viewDidLoad() {
        super.viewDidLoad()
        //创建UIDatePicker
        let myDatePicker = UIDatePicker(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 80))
        //设置位置
        myDatePicker.center = view.center
        //设置模式
        myDatePicker.datePickerMode = .dateAndTime
        //设置地区
        myDatePicker.locale = Locale(identifier: "zh_TW")
        //设置分钟的间隔 单位：分
        myDatePicker.minuteInterval = 1
        //设置开始的时间
        myDatePicker.date = Date()
        //实例化DateFormatter类
        formar = DateFormatter()
        //设置时间格式
        formar.dateFormat = "yyyy-MM-dd HH:mm"
        //定义最小时间
        let minidate = formar.date(from: "2017-09-01 00:00")
        //设置最小时间
        myDatePicker.minimumDate = minidate
        //定义最大时间
        let maxdate = formar.date(from: "2017-09-30 00:00")
        //设置最大时间
        myDatePicker.maximumDate = maxdate
        myDatePicker.addTarget(self, action: #selector(changeDate), for: .valueChanged)
        view.addSubview(myDatePicker)
        
        //创建myLabel显示选取的时间
        myLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 40))
        //设置位置
        myLabel.center = CGPoint(x: view.bounds.width * 0.5, y: view.bounds.height * 0.2)
        //设置内容居中
        myLabel.textAlignment = .center
        //设置字体颜色
        myLabel.textColor = UIColor.blue
        //设置myLabel的内容
        myLabel.text = formar.string(from: myDatePicker.date)
        view.addSubview(myLabel)
        
    }
    //选取日期事件方法
    func changeDate(p:UIDatePicker){
        myLabel.text = formar.string(from: p.date)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

