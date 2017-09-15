//
//  ViewController.swift
//  MUIButton
//
//  Created by pankx on 2017/9/14.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let fullmain = UIScreen.main.bounds
    override func viewDidLoad() {
        super.viewDidLoad()
        //创建系统UIButton
        let bnt1 = UIButton(type: .contactAdd)
        //设置按钮的位置
        bnt1.center = CGPoint(x: view.bounds.width * 0.1, y: view.bounds.height * 0.5)
        view.addSubview(bnt1)
        
        //创建系统的明细
        let bnt2 = UIButton(type: .infoLight)
        //设置按钮的位置
        bnt2.center = CGPoint(x: view.bounds.width * 0.9, y: view.bounds.height * 0.5)
        view.addSubview(bnt2)
        
        //创建自定义UIButton
        let bnt = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 40))
        //设置位置
        bnt.center = view.center
        //设置标题
        bnt.setTitle("自定义", for: .normal)
        //设置背景颜色
        bnt.backgroundColor = UIColor.blue
        //添加事件
        bnt.addTarget(self, action: #selector(clickBnt), for: .touchUpInside)
        
        view.addSubview(bnt)
    }
    
    //按钮的
    func clickBnt() {
        print(#function)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

