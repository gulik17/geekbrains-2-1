//
//  StatTableViewController.swift
//  Lucky
//
//  Created by Администратор on 24.04.2020.
//  Copyright © 2020 Home. All rights reserved.
//

import UIKit

class StatTableViewController: UITableViewController {

    var results = [Stat]()
    let statCaretaker = StatCaretaker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        results = statCaretaker.retrieveStats()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return results.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bodyIdentifier", for: indexPath)
        let result = results[indexPath.row]
        cell.textLabel?.text = "\(result.date)         \(result.resultValue)"
        return cell
    }

}
