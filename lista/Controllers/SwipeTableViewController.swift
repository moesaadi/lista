//
//  SwipeTableViewController.swift
//  lista
//
//  Created by Moe Saadi on 05/05/2018.
//  Copyright © 2018 Moe Saadi. All rights reserved.
//

import UIKit
import SwipeCellKit

class SwipeTableViewController: UITableViewController, SwipeTableViewCellDelegate {
    
    var cell:UITableViewCell?

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = 80.0
        
    }
    
//    background test
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let backgroundImage = UIImage(named: "black.png")
        let imageView = UIImageView(image: backgroundImage)
        //        imageView.alpha = 0.3
        self.tableView.backgroundView = imageView
        
        
    }
    

    
    
//        TableView Datasource Methods
        
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SwipeTableViewCell
        
//        cell coloring not written
        

        
        cell.delegate = self
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {
        
        guard orientation == .right else { return nil }
        
        let deleteAction = SwipeAction(style: .destructive, title: "Delete") { action, indexPath in
            // handle action by updating model with deletion
            
            self.updateModel(at: indexPath)

        }
        
        // customize the action appearance
        deleteAction.image = UIImage(named: "delete-icon")
        
        return [deleteAction]
    }
    func tableView(_ tableView: UITableView, editActionsOptionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> SwipeTableOptions {
        var options = SwipeTableOptions()
        options.expansionStyle = .destructive
        //        options.transitionStyle = .border
        return options
    }
    
    func updateModel(at indexPath: IndexPath) {
//        update our data mocel.
    }
    
}

