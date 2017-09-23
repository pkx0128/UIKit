//
//  ViewController.swift
//  MUISegmentedControl
//
//  Created by pankx on 2017/9/23.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //创建mySegment实例
        let mysegment = UISegmentedControl(items: ["上午","中午","下午"])
        //设置尺寸
        mysegment.frame = CGRect(x: 0, y: 16, width: view.bounds.width, height: 40)
        //设置背景颜色
        mysegment.backgroundColor = UIColor.cyan
        //设置选中颜色
        mysegment.tintColor = UIColor.blue
        //设置开始选中的选项
        mysegment.selectedSegmentIndex = 0
        //添加事件
        mysegment.addTarget(self, action: #selector(vchange), for: .valueChanged)
        view.addSubview(mysegment)
    }
    //选中相关事件方法
    func vchange(g:UISegmentedControl) {
        print(g.selectedSegmentIndex)
        print(g.titleForSegment(at: g.selectedSegmentIndex) ?? "")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

