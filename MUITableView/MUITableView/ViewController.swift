//
//  ViewController.swift
//  MUITableView
//
//  Created by pankx on 2017/9/25.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    //define info
    let info = [["java","c"],["go",".net","c++","swift","javascript"]]
    override func viewDidLoad() {
        super.viewDidLoad()
       
        //create mytableview
        let mytableview = UITableView(frame:CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height),style: .grouped)
        //register cell
        mytableview.register(UITableViewCell.self, forCellReuseIdentifier: "myCell")
        //set delegate and dataSource
        mytableview.dataSource = self
        mytableview.delegate = self
        //set separatorStyle
        mytableview.separatorStyle = .none
        
        //add to view
        view.addSubview(mytableview)
    }
    
    //set Section
    func numberOfSections(in tableView: UITableView) -> Int {
        return info.count
    }
    
    //set numberofRowinSection
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return info[section].count
    }
    //set cell info
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //define cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        //set cell.text value
        cell.textLabel?.text = info[indexPath.section][indexPath.row]
        return cell
    }
    //set section title
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        switch section {
            case 0: return "面向对象"
            case 1: return "面向过程"
            default: return ""
        }
        
    }
    //set the selected method
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You selected \(info[indexPath.section][indexPath.row])")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

