//
//  ViewController.swift
//  MUIRotationGestureRecognizer
//
//  Created by pankx on 2017/10/12.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var rView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        rView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        rView.center = view.center
        rView.backgroundColor = UIColor.blue
        view.addSubview(rView)
        
        let rotation = UIRotationGestureRecognizer(target: self, action: #selector(rotationEvent))
        rView.addGestureRecognizer(rotation)
    }

    @objc func rotationEvent(e: UIRotationGestureRecognizer) {
        rView.transform = CGAffineTransform(rotationAngle: e.rotation)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

