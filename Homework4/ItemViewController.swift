//
//  ViewController.swift
//  Homework4
//
//  Created by Mohammad Barrawi on 4/1/19.
//  Copyright © 2019 Mohammad Barrawi. All rights reserved.
//

import UIKit

struct Item {
    
    var id : Int
    var title : String
    var text : String
    var image : String
    
}

class ItemViewController: UITableViewController {
    
    var items = [
        Item(id: 1, title: "Buckingham Palace", text: "This is the Buckingham Palace", image: "buckinghamIcon"),
        Item(id: 2, title: "Eiffel Tower", text: "This is the Eiffel Tower", image: "eiffelIcon"),
        Item(id: 3, title: "The Grand Canyon", text: "This is the Grand Canyon", image: "grandIcon"),
        Item(id: 4, title: "Windsor Castle", text: "This is the Windsor Castle", image: "windsorIcon"),
        Item(id: 5, title: "Empire State Building", text: "This is the Windsor Castle", image: "empireIcon")
    ]
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "item", for: indexPath)
        
        let item = items[indexPath.row]
        cell.textLabel?.text = item.title
        cell.detailTextLabel?.text = item.text
        cell.imageView?.image = UIImage(named: item.image)
        
        return cell
    }
    
}


