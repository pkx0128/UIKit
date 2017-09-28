//
//  ViewController.swift
//  MUITableView(编辑模式)
//
//  Created by pankx on 2017/9/25.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var info = ["java","C++","C","PHP","swift","Object-c",".net"]
    var mytable: UITableView!
    var leftbutton: UIBarButtonItem!
    var rightbutton: UIBarButtonItem!
    var finishbutton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupNav()
        setupTabel()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension ViewController {
    func setupUI() {
        title = "EditTable"
        view.backgroundColor = UIColor.white
    }
    
    func setupNav() {
        navigationController?.navigationBar.barTintColor = UIColor.blue
        //Add leftbutton
        leftbutton = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(setEdit))
        navigationItem.leftBarButtonItem = leftbutton
        
        //Add finishButton
        finishbutton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(finish))
        
        //Add rightbutton
        rightbutton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(add))
        navigationItem.rightBarButtonItem = rightbutton
    }
    //create tableview
    func setupTabel() {
        mytable = UITableView(frame: CGRect(x: 0,y: 0,width: view.bounds.width,height: view.bounds.height - 64), style: .plain)
        mytable.center = view.center
        mytable.register(UITableViewCell.self, forCellReuseIdentifier: "myCell")
        mytable.delegate = self
        mytable.dataSource = self
        view.addSubview(mytable)
        
    }
    //add finishbutton event
    @objc func finish() {
        print(#function)
        mytable.setEditing(false, animated: true)
        rightbutton.isEnabled = true
        navigationItem.leftBarButtonItem = nil
        navigationItem.leftBarButtonItem = leftbutton
    }
    //Add add event
    @objc func add() {
        print("add new row")
        info.insert("pyhon", at: 0)
        mytable.beginUpdates()
        mytable.insertRows(at: [IndexPath(row: 0, section: 0)], with: .fade)
        mytable.endUpdates()
    }
    
    //Two states of the button
    @objc func setEdit() {
        if !mytable.isEditing {
            mytable.setEditing(true, animated: true)
            rightbutton.isEnabled = false
            navigationItem.leftBarButtonItem = nil
            navigationItem.leftBarButtonItem = finishbutton
        }
    }
    
}
//MARK: tableview delegation method
extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return info.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = info[indexPath.row]
        return cell
    }
    //Set the cell edit
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    //Set the remove method
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            info.remove(at: indexPath.row)
            mytable.beginUpdates()
            mytable.deleteRows(at: [indexPath], with: .fade)
            mytable.endUpdates()
        }
    }
    //Add the dragging method
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let content = info[sourceIndexPath.row]
        mytable.beginUpdates()
        info.remove(at: sourceIndexPath.row)
        info.insert(content, at: destinationIndexPath.row)
        mytable.endUpdates()
    }
    
}







