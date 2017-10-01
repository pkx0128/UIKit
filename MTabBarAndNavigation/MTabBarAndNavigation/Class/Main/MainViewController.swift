//
//  MainViewController.swift
//  MTabBarAndNavigation
//
//  Created by pankx on 2017/10/1.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupChildView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
extension MainViewController {
    /// 通过传入数组
    ///let tabArr = [["className":"HomeViewController","title"]:"首页","image":"tabbar_home","selectedImage":"tabbar_home_selected"]]
    /// - Parameter dit: 传入的数组
    /// - Returns: 返回一个View
    func control(dit:[String:String]) -> UIViewController {
        guard let className = dit["className"], let title = dit["title"], let image = dit["image"],
        let selectedImage = dit["selectedImage"] else {
            return UIViewController()
        }
        //获取命名空间
        let cln = (Bundle.main.infoDictionary?["CFBundleName"] as? String ?? "") + "." + className
        //使用反射机制通过类名获取具体的类
        let nv = NSClassFromString(cln) as! BaseViewController.Type
        
        let vc = nv.init()
        vc.title = title
        vc.tabBarItem.image = UIImage(named: image)
        vc.tabBarItem.selectedImage = UIImage(named: selectedImage)?.withRenderingMode(.alwaysOriginal)
        vc.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor : UIColor.orange], for: .selected)
        let nav = NavViewController(rootViewController: vc)
        return nav
    }
    
    
    /// 创建子控制器
    func setupChildView() {
        let tabArr = [["className":"HomeViewController","title":"首页","image":"tabbar_home","selectedImage":"tabbar_home_selected"],
                      ["className":"MessageViewController","title":"信息","image":"tabbar_message_center","selectedImage":"tabbar_message_center_selected"],
                      ["className":"DiscoverViewController","title":"发现","image":"tabbar_discover","selectedImage":"tabbar_discover_selected"],
                      ["className":"ProfileViewController","title":"我","image":"tabbar_profile","selectedImage":"tabbar_profile_selected"]]
        
        var ArrC = [UIViewController]()
        for nav in tabArr {
            ArrC.append(control(dit: nav))
        }
        viewControllers = ArrC
    }

}

