//
//  MainViewController.swift
//  MTabBarAndNav
//
//  Created by pankx on 2017/9/29.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        setupChild()
        childNav()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
extension MainViewController {
    func setupChild() {
        let home = HomeViewController()
        home.title = "首页"
        home.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "tabbar_home"), selectedImage: UIImage(named: "tabbar_home_seleted"))
        let homeNav = NavViewController(rootViewController: home)
        
        let message = MessageViewController()
        message.title = "信息"
        message.tabBarItem = UITabBarItem(title: "Message", image: UIImage(named: "tabbar_message_center"), selectedImage: UIImage(named: "tabbar_message_center_seleted"))
        let messageNav = NavViewController(rootViewController: message)
        
        let discover = DisCoverViewController()
        discover.title = "发现"
        discover.tabBarItem = UITabBarItem(title: "Discover", image: UIImage(named: "tabbar_discover"), selectedImage: UIImage(named: "tabbar_discover_seleted"))
        let discoverNav = NavViewController(rootViewController: discover)
        
        let profile = ProfileViewController()
        profile.title = "我"
        profile.tabBarItem = UITabBarItem(title: "Me", image: UIImage(named: "tabbar_profile"), selectedImage: UIImage(named: "tabbar_profile_seleted"))
        let profileNav = NavViewController(rootViewController: profile)
        
        self.viewControllers = [homeNav,messageNav,discoverNav,profileNav]
    }
    
    func getnavview(dit:[String:String]) -> UIViewController {
        guard let clsstr = dit["className"] ,let title = dit["title"], let image = dit["image"], let selectedImage = dit["selectedImage"] else {
            return UIViewController()
        }
        
        let ns = Bundle.main.infoDictionary?["CFBundleName"] as? String ?? ""
        let clsn = ns + "." + clsstr
        let cls = NSClassFromString(clsn) as! BaseViewController.Type
        
        let vc = cls.init()
        vc.title = title
        vc.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.orange], for: .selected)
        vc.tabBarItem.image = UIImage(named: image)
        vc.tabBarItem.selectedImage = UIImage(named: selectedImage)?.withRenderingMode(.alwaysOriginal)
        let nav = NavViewController(rootViewController: vc)
        return nav
        
    }
    
    func childNav() {
        let NavInfo = [["className":"HomeViewController","title": "首页","image": "tabbar_home","selectedImage":"tabbar_home_selected"],
                       ["className":"MessageViewController","title": "信息","image": "tabbar_message_center","selectedImage":"tabbar_message_center_selected"],
                       ["className":"DisCoverViewController","title": "发现","image": "tabbar_discover","selectedImage":"tabbar_discover_selected"],
                       ["className":"ProfileViewController","title": "我","image": "tabbar_profile","selectedImage":"tabbar_profile_selected"]]
        var NavArr = [UIViewController]()
        for nav in NavInfo {
            NavArr.append(getnavview(dit: nav))
        }
        self.viewControllers = NavArr
    }
    
}
