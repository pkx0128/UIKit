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
    }
    
    //按钮事件方法
    func showSimpleInit() {
        //创建提示框
        let alert = UIAlertController(title: "提示", message: "这是一个简单的提示框实例", preferredStyle: .alert)
        //创建提示框按钮
        let okAction = UIAlertAction(title: "确定", style: .default) { (UIAlertAction) in
            print("okAction")
        }
        //将按钮添加到提示框
        alert.addAction(okAction)
        //显示提示框
        self.present(alert, animated: true, completion: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

