//
//  ViewController.swift
//  MUIScrollView
//
//  Created by pankx on 2017/10/2.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var myScroll: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension ViewController {
    func setupUI() {
        //创建myScroll
        myScroll = UIScrollView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height))
        myScroll.contentSize = CGSize(width: view.bounds.width * 3, height: view.bounds.height * 2)
        //设置是否显示水平或垂直滚动条
        myScroll.showsVerticalScrollIndicator = true
        myScroll.showsHorizontalScrollIndicator = true
        view.addSubview(myScroll)
    }
}

