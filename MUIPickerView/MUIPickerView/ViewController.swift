//
//  ViewController.swift
//  MUIPickerView
//
//  Created by pankx on 2017/9/22.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let myUIPickerView = UIPickerView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 80))
        myUIPickerView.center = view.center
        let myView = myViewController()
        self.addChildViewController(myView)
        myUIPickerView.dataSource = myView
        myUIPickerView.delegate = myView
        
        view.addSubview(myUIPickerView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

