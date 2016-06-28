//
//  DETableViewCell.swift
//  DebugExample
//
//  Created by Chase Wang on 6/28/16.
//  Copyright © 2016 Make School. All rights reserved.
//

import UIKit

class DETableViewCell: UITableViewCell {

    // MARK: - Instance Vars
    
    @IBOutlet weak var nameLabel: UILabel!
    
    // MARK: - IBActions
    
    @IBAction func buttonTapped(sender: AnyObject) {
        print("button tap confirmed")
    }
}
