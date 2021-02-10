//
//  ViewController.swift
//  RestaurantTable
//
//  Created by Leandro Ramos on 2/10/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats And Deli", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]
    
    var thumbNail = ["Barrafina", "Bourke Street Bakery", "Cafe Deadend", "Cafe Loisl", "Cafe Lore", "CASK Pub and Kitchen", "Confessional", "Donostia", "Five Leaves", "For Kee Restaurant", "Graham Avenue Meats And Deli", "Haigh's Chocolate", "Homei", "Palomino Espresso", "Petite Oyster", "Po's Atelier", "restaurant", "Royal Oak", "Teakha", "Traif", "Upstate", "Waffle & Wolf"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "datacell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        cell.textLabel?.text = restaurantNames[indexPath.row]
        cell.imageView?.image = UIImage(named: thumbNail[indexPath.row])
        
        return cell
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

}

