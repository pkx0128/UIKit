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
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

