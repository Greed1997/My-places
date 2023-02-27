//
//  MainViewController.swift
//  My places
//
//  Created by Александр on 27.02.2023.
//

import UIKit

class MainViewController: UITableViewController {
    
    let restaurants = [
        "Балкан Гриль", "Бочка", "Вкусные истории",
        "Дастархан", "Индокитай", "Классик",
        "Шок", "Bonsai", "Burger Heroes",
        "Kitchen", "Love&Life", "Morris Pub",
        "Sherlock Holmes", "Speak Easy", "X.O"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        restaurants.count
    }

    // MARK: - Table view delegate
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let restaurant = restaurants[indexPath.row]
        cell.textLabel?.text = restaurant
        cell.imageView?.image = UIImage(named: restaurant)
//        var content = cell.defaultContentConfiguration()
//        content.text = restaurant
//        content.image = UIImage(named: restaurant)
//        cell.contentConfiguration = content
        return cell
    }
}

