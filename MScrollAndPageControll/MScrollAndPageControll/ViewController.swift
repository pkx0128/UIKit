//
//  ViewController.swift
//  MScrollAndPageControll
//
//  Created by pankx on 2017/10/3.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        setupUI()
    }
}
extension ViewController {
    func setupUI() {
        let myScroll = UIScrollView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height))
        myScroll.center = view.center
        myScroll.contentSize = CGSize(width: view.bounds.width * 5, height: view.bounds.height)
        myScroll.isPagingEnabled = true
        myScroll.showsHorizontalScrollIndicator = false
        myScroll.showsVerticalScrollIndicator = false
        view.addSubview(myScroll)
    }
}
