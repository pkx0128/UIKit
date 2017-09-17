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
        
        //用户UIImageView(frame:)创建UIImageView
        let image0 = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        //设置位置
        image0.center = CGPoint(x: view.bounds.width * 0.5, y: view.bounds.height * 0.2)
        //给UIImageView添加图片
        image0.image = UIImage(named: "test0")
        view.addSubview(image0)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

