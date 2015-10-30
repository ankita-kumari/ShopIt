//
//  ViewController.swift
//  ShopIt
//
//  Created by Ankita Kumari on 13/10/15.
//  Copyright © 2015 com.test.ankita. All rights reserved.
//

import UIKit
import Realm

class ViewController: UITableViewController {

    var todos: RLMResults {
        get {
            return ToBuyItem.allObjects()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "CellIdentifier") // [1]
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData() // [2]
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Int(todos.count) // [3]
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellIdentifier", forIndexPath: indexPath) as UITableViewCell
        
        let index = UInt(indexPath.row)
        let todoItem = todos.objectAtIndex(index) as! ToBuyItem // [4]
        cell.textLabel!.text = todoItem.name // [5]
        
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

