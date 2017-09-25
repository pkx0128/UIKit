//
//  ViewController.swift
//  多页面
//
//  Created by pankx on 2017/9/25.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //create mylabel
        let mylabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 40))
        mylabel.center = CGPoint(x: view.bounds.width * 0.5, y: view.bounds.height * 0.1)
        mylabel.text = "Home"
        mylabel.textColor = UIColor.blue
        mylabel.textAlignment = .center
        view.addSubview(mylabel)
        
        //create mybutton
        let mybutton = UIButton(frame:CGRect(x: 0, y: 0, width: 100, height: 40))
        mybutton.center = CGPoint(x: view.bounds.width * 0.5, y: view.bounds.height * 0.4)
        mybutton.setTitle("Articel", for: .normal)
        mybutton.setTitleColor(UIColor.black, for: .normal)
        mybutton.addTarget(self, action: #selector(goArticel), for: .touchUpInside)
        view.addSubview(mybutton)
        
        //create infoButton
        let infoButton = UIButton(frame:CGRect(x: 0, y: 0, width: 100, height: 40))
        infoButton.center = CGPoint(x: view.bounds.width * 0.5, y: view.bounds.height * 0.6)
        infoButton.setTitle("Info", for: .normal)
        infoButton.setTitleColor(UIColor.black, for: .normal)
        infoButton.addTarget(self, action: #selector(goInfo), for: .touchUpInside)
        view.addSubview(infoButton)
    }
    
    //goArticel method
    @objc func goArticel() {
        self.present(ArticleViewController(), animated: true, completion: nil)
    }
    
    //goInfo method
   @objc func goInfo() {
        self.present(IntroViewController(), animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

