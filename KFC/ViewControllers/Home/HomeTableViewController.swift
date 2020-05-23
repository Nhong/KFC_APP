//
//  HomeTableViewController.swift
//  KFC
//
//  Created by Kittinun Chobtham on 10/5/2563 BE.
//  Copyright © 2563 Kittinun Chobtham. All rights reserved.
//

import UIKit

enum Section: Int {
    case Promotion = 0
    case Information
}

final class HomeTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    private func setupView() {
        setupTableView()
    }
    
    private func setupTableView() {
        setupTableViewRowHeight()
    }
    
    private func setupTableViewRowHeight() {
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 200.0
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func prepare(for segue: UIStoryboardSegue,
                          sender: Any?) {
        switch segue.destination {
        case let menuViewController as MenuDetailViewController:
            menuViewController.setup(menuItem: sender as? MenuItem)
        default:
            break
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        let homeSection = Section(rawValue: section)!
        
        switch homeSection {
        case .Promotion:
            let totalPromotionRow = 1
            
            return totalPromotionRow
        case .Information:
            let totalTitleRow = 1
            
            return menuItems.count + totalTitleRow
        }
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let homeSection = Section(rawValue: indexPath.section)!
        
        switch homeSection {
        case .Promotion:
            let cell = tableView.dequeueReusableCell(withIdentifier: "PromotionCellIdentifier",
                                                     for: indexPath) as! PromotionTableViewCell
            
            cell.configure(imageName: promotion.imageName)
            
            return cell
        case .Information:
            let isTitleRowInformation =  indexPath.row == 0
            
            if isTitleRowInformation {
                let cell = tableView.dequeueReusableCell(withIdentifier: "TitleCellIdentifier",
                                                         for: indexPath) as! TitleTableViewCell
                
                cell.configure(title: "Menu")
                
                return cell
            }
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "MenuItemCellIdentifier",
                                                     for: indexPath) as! MenuTableViewCell
            
            let menu = menuItems[indexPath.row - 1]
            
            cell.configure(imageName: menu.imageName,
                           title: menu.name,
                           price: menu.price)
            
            return cell
        }
        
    }
    
    override func tableView(_ tableView: UITableView,
                            heightForHeaderInSection section: Int) -> CGFloat {
        return 0.2
    }
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView,
                            didSelectRowAt indexPath: IndexPath) {
        let homeSection = Section(rawValue: indexPath.section)!

        switch homeSection {
        case .Information:
            let menu = menuItems[indexPath.row - 1]
            
            performSegue(withIdentifier: "MenuDetailIdentifier",
                         sender: menu)
        default:
            break
        }
    }

}
