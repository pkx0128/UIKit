//
//  ViewController.swift
//  MUIPinchGestureRecognizer
//
//  Created by pankx on 2017/10/11.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var pinchView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        pinchView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        pinchView.center = view.center
        pinchView.backgroundColor = UIColor.blue
        view.addSubview(pinchView)
        
        let pinchG = UIPinchGestureRecognizer(target: self, action: #selector(pinchEvent))
        pinchView.addGestureRecognizer(pinchG)
    }

    @objc func pinchEvent(e: UIPinchGestureRecognizer) {
        let pf = pinchView.frame
        if e.state == .began {
            print("pinch Began!")
        }else if e.state == .changed {
            if pf.width * e.scale > 100 && pf.height * e.scale < 400 {
                pinchView.frame = CGRect(x: pf.origin.x, y: pf.origin.y, width: pf.width * e.scale, height: pf.height * e.scale)
            }
        }else if e.state == .ended {
            print("Pinch End")
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

