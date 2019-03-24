//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Connor Bryner on 3/23/19.
//  Copyright © 2019 Connor Bryner. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableview: UITableView!
    
    var emojis = ["😀","😍","💩","💀","🙏","😽"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.dataSource = self
        tableview.delegate = self
    }
    func tableView(_ tableView: UITableView,
        numberOfRowsInSection: Int) -> Int {
        return emojis.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
}

