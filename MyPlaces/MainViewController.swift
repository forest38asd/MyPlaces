//
//  MainViewController.swift
//  MyPlaces
//
//  Created by 1 on 19/12/2021.
//

import UIKit

class MainViewController: UITableViewController {
    
    let restaurantNames = [
        "Burger Heroes", "Kitchen", "Bonsai", "Dastarhan",
        "Indochina", "H.O", "Balkan Grill", "Sherlock Holmes",
        "Speak Easy", "Morris Pub", "Tasty stories",
        "Classic", "Love&Life", "Shock", "Bochka"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

}

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        var content = cell.defaultContentConfiguration()

        content.text = restaurantNames[indexPath.row]
        content.image = UIImage(named: restaurantNames[indexPath.row])
        content.imageProperties.cornerRadius = cell.frame.size.height / 2

        cell.contentConfiguration = content
        
//        cell.textLabel?.text = restaurantNames[indexPath.row]
//        cell.imageView?.image = UIImage(named: restaurantNames[indexPath.row])
//        cell.imageView?.layer.cornerRadius = cell.frame.size.height / 2
//        cell.imageView?.clipsToBounds = true
        

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
