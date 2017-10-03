//
//  ViewController.swift
//  MScrollAndPageControll
//
//  Created by pankx on 2017/10/3.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var myScroll: UIScrollView!
    var mylabel: UILabel!
    var myPage: UIPageControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupPage()
    }
}
extension ViewController: UIScrollViewDelegate {
    func setupUI() {
        view.backgroundColor = UIColor.white
        myScroll = UIScrollView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height))
        myScroll.center = CGPoint(x: view.bounds.width * 0.5, y: view.bounds.height * 0.5)
        myScroll.contentSize = CGSize(width: view.bounds.width * 5, height: view.bounds.height)
        myScroll.isPagingEnabled = true
        myScroll.showsHorizontalScrollIndicator = true
        myScroll.showsVerticalScrollIndicator = false
        myScroll.delegate = self
        view.addSubview(myScroll)
        for i in 0...4 {
            mylabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 40))
            mylabel.center = CGPoint(x: view.bounds.width * (0.5 + CGFloat(i)), y: view.bounds.height * 0.2)
            mylabel.textAlignment = .center
            mylabel.text = "\(i + 1)"
            myScroll.addSubview(mylabel)
        }
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print(#function)
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
