//
//  ViewController.swift
//  MUISwipeGestureRecognizer
//
//  Created by pankx on 2017/10/11.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var myView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        myView.backgroundColor = UIColor.blue
        view.addSubview(myView)
        
        //Swipe Up
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(swipeEvent))
        swipeUp.direction = .up
        swipeUp.numberOfTouchesRequired = 1
        view.addGestureRecognizer(swipeUp)
        
        //Swipe Down
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(swipeEvent))
        swipeDown.direction = .down
        swipeDown.numberOfTouchesRequired = 1
        view.addGestureRecognizer(swipeDown)
        
        //Swipe Left
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swipeEvent))
        swipeLeft.direction = .left
        swipeLeft.numberOfTouchesRequired = 1
        view.addGestureRecognizer(swipeLeft)
        
        //Swipe Right
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swipeEvent))
        swipeRight.direction = .right
        swipeRight.numberOfTouchesRequired = 1
        view.addGestureRecognizer(swipeRight)
    }

    /// Swipe myView
    ///
    /// - Parameter swipeEnvet: Swipe the direction
    @objc func swipeEvent(swipeEnvet: UISwipeGestureRecognizer) {
        let dir = swipeEnvet.direction
        switch dir {
        case .up:
            print("up")
            myView.center = myView.center.y >= 150 ? CGPoint(x: myView.center.x, y: myView.center.y - 100) : CGPoint(x: myView.center.x, y:50)
        case .down:
            print("down")
            myView.center = myView.center.y <= (view.bounds.maxY - 150) ? CGPoint(x: myView.center.x, y: myView.center.y + 100) : CGPoint(x: myView.center.x, y: view.bounds.maxY - 50)
        case .left:
            print("left")
            myView.center = myView.center.x >= 150 ? CGPoint(x: myView.center.x - 100, y: myView.center.y) : CGPoint(x: 50, y: myView.center.y)
        case .right:
            print("right")
            myView.center = myView.center.x <= (view.bounds.maxX - 150) ? CGPoint(x: myView.center.x + 100, y: myView.center.y) : CGPoint(x: view.bounds.maxX - 50, y: myView.center.y)
        default: break
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

