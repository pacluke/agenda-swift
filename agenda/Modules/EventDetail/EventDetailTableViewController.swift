//
//  EventDetailTableViewController.swift
//  agenda
//
//  Created by Lucas Flores on 28/09/20.
//  Copyright © 2020 lsflores. All rights reserved.
//

import UIKit
import Hero

class EventDetailTableViewController: UITableViewController {
    
    var viewModel: EventDetailViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
    }
    
    private func setupTableView() {
        self.tableView.separatorStyle = .none
        self.tableView.backgroundColor = ColorPalette.charcoal.color()
        self.navigationController?.navigationBar.barTintColor = ColorPalette.charcoal.color()
        self.title = "Event detail"
        self.tableView.estimatedRowHeight = 150.0
        self.tableView.rowHeight = UITableView.automaticDimension
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
        return viewModel.numberOfItems
    }
    
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        switch viewModel?.cellType[indexPath.row] {
            case .image:
                return 150.0
            default:
                return UITableView.automaticDimension
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch viewModel?.cellType[indexPath.row] {
            case .image:
                return 150.0
            default:
                return UITableView.automaticDimension
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch viewModel?.cellType[indexPath.row] {
            case .image:
                let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: EventDetailImageTableViewCell.self), for: indexPath) as! EventDetailImageTableViewCell
                cell.updateEventImage(imageURL: viewModel.cellContent(index: indexPath.row))
                return cell
            default:
                let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: EventDetailTextTableViewCell.self), for: indexPath) as! EventDetailTextTableViewCell
                cell.eventText.text = viewModel.cellContent(index: indexPath.row)
                cell.setCellType(cellType: viewModel.cellType[indexPath.row])
                
                if viewModel?.cellType[indexPath.row] == .time {
                    cell.heroID = "date\(viewModel.id)"
                } else if viewModel?.cellType[indexPath.row] == .title {
                    cell.heroID = "card\(viewModel.id)"
                }
                
                return cell
        }
        
    }
    
}
