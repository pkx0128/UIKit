//
//  ViewController.swift
//  MUIImageView
//
//  Created by pankx on 2017/9/16.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //使用UIImageView(frame:)创建UIImageView
        let image0 = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        //设置位置
        image0.center = CGPoint(x: view.bounds.width * 0.5, y: view.bounds.height * 0.2)
        //给UIImageView添加图片
        image0.image = UIImage(named: "test0")
        view.addSubview(image0)
        
        //使用UIImageView(image:)创建UIIamgeView
        let image1 = UIImageView(image: UIImage(named: "test1"))
        //设置UIIamgeView的大小与原点
        image1.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        //设置UIImageView的位置
        image1.center = CGPoint(x: view.bounds.width * 0.5, y: view.bounds.height * 0.36)
        view.addSubview(image1)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

