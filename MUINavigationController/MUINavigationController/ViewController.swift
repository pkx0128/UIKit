//
//  ViewController.swift
//  MUINavigationController
//
//  Created by pankx on 2017/9/26.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        title = "Home"
        
        //add leftbutton
        self.navigationController?.navigationBar.backgroundColor = UIColor.blue
        let leftbutton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addSomething))
        navigationItem.leftBarButtonItem = leftbutton
        
        //add rightbutton
        let rightbutton = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(editSomething))
        navigationItem.rightBarButtonItem = rightbutton
    }
    
    //set the transitions
    @objc func editSomething() {
        self.navigationController?.pushViewController(EditViewController(), animated: true)
    }
    //set the transitions
    @objc func addSomething() {
       self.navigationController?.pushViewController(AddViewController(), animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

