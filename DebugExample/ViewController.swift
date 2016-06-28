//
//  ViewController.swift
//  DebugExample
//
//  Created by Chase Wang on 6/28/16.
//  Copyright © 2016 Make School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Instance Vars
    
    let nameArray = ["Sansa", "Arya", "Jon", "Cersei", "Jamie"]
    
    // MARK: - Subviews
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - VC Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - UITableViewDataSource

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("DECell") as! DETableViewCell
        
        let name = nameArray[indexPath.row]
        cell.nameLabel.text = name
        
        
        return cell
    }
}