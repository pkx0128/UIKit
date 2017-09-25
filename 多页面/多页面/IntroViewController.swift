//
//  IntroViewController.swift
//  多页面
//
//  Created by pankx on 2017/9/25.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //set backgroundColor
        view.backgroundColor = UIColor.yellow
        
        let disbutton = UIButton(frame:CGRect(x: 0, y: 0, width: 100, height: 40))
        disbutton.center = view.center
        disbutton.setTitleColor(UIColor.black, for: .normal)
        disbutton.setTitle("goBack", for: .normal)
        disbutton.addTarget(self, action: #selector(goback), for: .touchUpInside)
        view.addSubview(disbutton)
    }
    
   @objc func goback() {
        self.dismiss(animated: true, completion: nil)
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
