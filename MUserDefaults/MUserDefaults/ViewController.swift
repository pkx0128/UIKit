//
//  ViewController.swift
//  MUserDefaults
//
//  Created by pankx on 2017/9/28.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var mytext: UITextField!
    var upButton: UIButton!
    var delButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNav()
        setupUI()
    }

   @objc func showMyInfo() {
    
    }
}

extension ViewController {
    //set nav
    func setupNav() {
        title = "Home"
        let rightbutton = UIBarButtonItem(title: "show", style: .done, target: self, action: #selector(showMyInfo))
        navigationItem.rightBarButtonItem = rightbutton
    }
    func setupUI() {
        mytext = UITextField(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 40))
        mytext.center = CGPoint(x: view.bounds.width * 0.5, y: view.bounds.height * 0.3)
        mytext.textAlignment = .center
        mytext.placeholder =  "please inuput"
        view.addSubview(mytext)
        
        upButton = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 40))
        upButton.center = view.center
        upButton.setTitle("UPData", for: .normal)
        upButton.setTitleColor(UIColor.black, for: .normal)
        upButton.backgroundColor = UIColor.blue
        upButton.addTarget(self, action: #selector(upMethod), for: .touchUpInside)
        view.addSubview(upButton)
        
        delButton = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 40))
        delButton.center = CGPoint(x: view.bounds.width * 0.5, y: view.bounds.height * 0.6)
        delButton.setTitle("DelData", for: .normal)
        delButton.backgroundColor = UIColor.blue
        delButton.setTitleColor(UIColor.black, for: .normal)
        delButton.addTarget(self, action: #selector(DelMethod), for: .touchUpInside)
        view.addSubview(delButton)
        
    }
    
    @objc func upMethod() {
        
    }
    
    @objc func DelMethod() {
        
    }
}





