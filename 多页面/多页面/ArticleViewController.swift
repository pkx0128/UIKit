//
//  ArticleViewController.swift
//  多页面
//
//  Created by pankx on 2017/9/25.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class ArticleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.orange
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 40))
        button.center = view.center
        button.setTitle("goBack", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.addTarget(self, action: #selector(goback), for: .touchUpInside)
        view.addSubview(button)
        
        let goDetail = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 40))
        goDetail.center = CGPoint(x: view.bounds.width * 0.5, y: view.bounds.height * 0.6)
        goDetail.setTitle("goDetail", for: .normal)
        goDetail.setTitleColor(UIColor.black, for: .normal)
        goDetail.addTarget(self, action: #selector(gotoDetail), for: .touchUpInside)
        view.addSubview(goDetail)
    }
    
    @objc func gotoDetail() {
        self.present(ArticleDetailViewController(), animated: true, completion: nil)
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
