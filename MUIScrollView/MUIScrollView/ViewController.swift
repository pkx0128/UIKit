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
        //设置滚动条的颜色
        myScroll.indicatorStyle = .default
        //是否可按状态栏回到顶部
        myScroll.scrollsToTop = true
        //限制只能单个方向滚动
        myScroll.isDirectionalLockEnabled = true
        //超过范围时是否有弹回效果
        myScroll.bounces = true
        //设置ScrollView的偏移量
        myScroll.contentOffset = CGPoint(x: view.bounds.width * 0.5, y: view.bounds.height * 0.5)
        view.addSubview(myScroll)
    }
}

