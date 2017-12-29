//
//  LocationViewController.swift
//  LetsEat
//
//  Created by Remi Tobias on 29/12/2017.
//  Copyright © 2017 Remi Tobias. All rights reserved.
//

import UIKit

class LocationViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // How may sections to display
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // How many rows we want to display
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    // A cell is created every time this method is called
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "locationCell", for: indexPath) as UITableViewCell
        cell.textLabel?.text = "A cell"
        return cell
        
    }

}
