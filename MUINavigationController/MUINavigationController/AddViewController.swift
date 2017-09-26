//
//  AddViewController.swift
//  MUINavigationController
//
//  Created by pankx on 2017/9/26.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.cyan
        
        //set the leftbutton
        let leftbutton = UIBarButtonItem(title: "back", style: .done, target: self, action: #selector(goback))
        navigationItem.leftBarButtonItem = leftbutton
    }
    
    //set the transitions
    @objc func goback() {
        self.navigationController?.popViewController(animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
