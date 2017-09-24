//
//  ViewController.swift
//  MUISlider
//
//  Created by pankx on 2017/9/24.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myImage: UIImageView!
    var mySlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //创建图片
        myImage = UIImageView(image: UIImage(named: "4"))
        //设置图片尺寸
        myImage.frame = CGRect(x: 0, y: 0, width: 150, height: 150)
        //设置图片位置
        myImage.center = view.center
        view.addSubview(myImage)
        
        //创建滑杆
        mySlider = UISlider(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 20))
        //设置位置
        mySlider.center = CGPoint(x: view.bounds.width * 0.5, y: view.bounds.height * 0.7)
        //设置滑杆最小值
        mySlider.minimumValue = 0
        //设置滑杆最大值
        mySlider.maximumValue = 100
        //设置滑杆初始值
        mySlider.value = 100
        //设置是否随着滑标滑动改变值
//        mySlider.isContinuous = false
        //设置滑标的颜色
        mySlider.thumbTintColor = UIColor.red
        //设置Slider的背景颜色
        mySlider.backgroundColor = UIColor.white
        //设置滑标右边滑轨的颜色
        mySlider.maximumTrackTintColor = UIColor.cyan
        //设置滑标左边滑轨的颜色
        mySlider.minimumTrackTintColor = UIColor.orange
        //添加滑动事件
        mySlider.addTarget(self, action: #selector(vChange), for: .valueChanged)
        view.addSubview(mySlider)
    }

    //滑动事件方法
    func vChange() {
        myImage.alpha = CGFloat(mySlider.value / mySlider.maximumValue)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

