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
        setupUI()
        setupPage()
    }
}
extension ViewController {
    func setupUI() {
        view.backgroundColor = UIColor.white
        let myScroll = UIScrollView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height))
        myScroll.center = view.center
        myScroll.contentSize = CGSize(width: view.bounds.width * 5, height: view.bounds.height)
        myScroll.isPagingEnabled = true
        myScroll.showsHorizontalScrollIndicator = true
        myScroll.showsVerticalScrollIndicator = false
        view.addSubview(myScroll)
    }
    func setupPage() {
        let myPage = UIPageControl(frame: CGRect(x: 0, y: 0, width: view.bounds.width * 0.85 , height: 50))
        myPage.center = CGPoint(x: view.bounds.width * 0.5, y: view.bounds.height * 0.9)
        myPage.numberOfPages = 5
        myPage.currentPage = 0
        myPage.pageIndicatorTintColor = UIColor.darkGray
        myPage.currentPageIndicatorTintColor = UIColor.black
        myPage.addTarget(self, action:#selector(pagechange) , for: .valueChanged)
        view.addSubview(myPage)
    }
    @objc func pagechange() {
        
    }
}
