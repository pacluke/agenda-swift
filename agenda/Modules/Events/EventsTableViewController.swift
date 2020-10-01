//
//  EventsTableViewController.swift
//  agenda
//
//  Created by Lucas Flores on 27/09/20.
//  Copyright © 2020 lsflores. All rights reserved.
//

import UIKit
import Hero

class EventsTableViewController: UITableViewController {
    
    lazy var viewModel: EventsViewModel = {
        let vm = EventsViewModel()
        vm.delegate = self
        return vm
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        self.hero.isEnabled = true
    }
    
    private func setupTableView() {
        self.tableView.separatorStyle = .none
        self.tableView.backgroundColor = ColorPalette.charcoal.color()
        self.navigationController?.navigationBar.barTintColor = ColorPalette.charcoal.color()
        self.title = "Events"
        self.tableView.hero.modifiers = [.translate(y:100)]
        viewModel.fetchData()
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
        
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: EventsTableViewCell.self), for: indexPath) as! EventsTableViewCell
        
        cell.date.text = viewModel.date[indexPath.row]
        cell.hour.text = viewModel.hour[indexPath.row]
        cell.title.text = viewModel.title[indexPath.row]
        cell.info.text = viewModel.info[indexPath.row]
        
        cell.dateView.heroID = "date\(viewModel.id[indexPath.row])"
        cell.cardView.heroID = "card\(viewModel.id[indexPath.row])"
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel.navigateToDetail(index: indexPath.row)
    }
}

extension EventsTableViewController: EventsViewModelProtocol {
    
    func presentFetchedData() {
        self.tableView.reloadData()
    }
    
    func presentNetworkError() {
        
    }
    
    func navigateToDetail(detail: EventDetailTableViewController) {
        self.navigationController?.pushViewController(detail, animated: true)
    }
}
