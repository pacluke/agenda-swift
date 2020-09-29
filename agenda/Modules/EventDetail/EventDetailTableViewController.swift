//
//  EventDetailTableViewController.swift
//  agenda
//
//  Created by Lucas Flores on 28/09/20.
//  Copyright © 2020 lsflores. All rights reserved.
//

import UIKit

class EventDetailTableViewController: UITableViewController {
    
    var viewModel: EventDetailViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
    }
    
    private func setupTableView() {
        self.tableView.separatorStyle = .none
        self.tableView.backgroundColor = ColorPalette.charcoal.color()
        self.navigationController?.navigationBar.barTintColor = ColorPalette.charcoal.color()
        self.title = "Event detail"
    }
}

extension EventDetailTableViewController {
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return viewModel?.numberOfItems ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return UITableViewCell()
    }
    
}
