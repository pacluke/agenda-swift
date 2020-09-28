//
//  EventsTableViewController.swift
//  agenda
//
//  Created by Lucas Flores on 27/09/20.
//  Copyright © 2020 lsflores. All rights reserved.
//

import UIKit

class EventsTableViewController: UITableViewController {
    
    lazy var viewModel: EventsViewModel = {
        let vm = EventsViewModel()
        vm.delegate = self
        return vm
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func setupTableView() {
        self.tableView.separatorStyle = .none
        
    }
    
}

extension EventsTableViewController {
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfItems
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

extension EventsTableViewController: EventsViewModelProtocol {
    
    func presentFetchedData() {
        tableView.reloadData()
    }
    
    func presentNetworkError() {
        
    }
}
