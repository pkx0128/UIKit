//
//  ViewController.swift
//  MAutoPalyImageView
//
//  Created by pankx on 2017/9/17.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //定义图片数组
    let imageArr = [UIImage(named:"test0")!,UIImage(named:"test1")!,UIImage(named:"test2")!,UIImage(named:"test3")!,UIImage(named:"test4")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //创建UIImageView
        let image = UIImageView(frame:CGRect(x: 0, y: 0, width: 200, height: 200))
        //设置位置
        image.center = view.center
        //设置图片轮播的图片数组
        image.animationImages = imageArr
        //设置完成一次轮播的时间单位秒
        image.animationDuration = 5
        //设置轮播的次数
        image.animationRepeatCount = 0
        //开始轮播
        image.startAnimating()
        view.addSubview(image)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

