//
//  ViewController.swift
//  MscrollAndPage
//
//  Created by pankx on 2017/10/4.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myscoll: UIScrollView!
    var mypage: UIPageControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

}

extension ViewController: UIScrollViewDelegate {
    func setupUI() {
        view.backgroundColor = UIColor.white
        myscoll = UIScrollView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height))
        myscoll.center = CGPoint(x: view.bounds.width * 0.5, y: view.bounds.height * 0.5)
        myscoll.contentSize = CGSize(width: view.bounds.width * 5, height: view.bounds.height)
        myscoll.delegate = self
        myscoll.isPagingEnabled = true
        myscoll.showsVerticalScrollIndicator = false
        myscoll.showsHorizontalScrollIndicator = false
        view.addSubview(myscoll)
        
        mypage = UIPageControl(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 40))
        mypage.center = CGPoint(x: view.bounds.width * 0.5, y: view.bounds.height * 0.9)
        mypage.currentPage = 0
        mypage.numberOfPages = 5
        mypage.addTarget(self, action: #selector(pagechange), for: .valueChanged)
        mypage.currentPageIndicatorTintColor = UIColor.darkGray
        mypage.pageIndicatorTintColor = UIColor.blue
        view.addSubview(mypage)
        
        var myLabel: UILabel!
        for i in 0...4 {
            myLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 40))
            myLabel.center = CGPoint(x: view.bounds.width * (0.5 + CGFloat(i)), y: view.bounds.height * 0.2)
            myLabel.text = "\(i + 1)"
            myLabel.textAlignment = .center
            myLabel.textColor = UIColor.red
            myscoll.addSubview(myLabel)
        }
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let p = Int(scrollView.contentOffset.x / scrollView.bounds.width)
        mypage.currentPage = p
    }
    
    @objc func pagechange(_ sender: UIPageControl) {
        var frame = myscoll.frame
        frame.origin.x = frame.width * (CGFloat(sender.currentPage))
        frame.origin.y = 0
        myscoll.scrollRectToVisible(frame, animated: true)
    }
}
