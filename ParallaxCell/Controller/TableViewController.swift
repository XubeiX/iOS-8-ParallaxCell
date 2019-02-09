//
//  ViewController.swift
//  ParallaxCell
//
//  Created by Artur on 09/02/2019.
//  Copyright © 2019 Artur. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataSource.Instance.getCellData().count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "parallaxViewCell", for: indexPath) as? ParallaxViewCell else {
            return ParallaxViewCell()
        }
        
        let data = DataSource.Instance.getCellData()[indexPath.row]
        cell.configureCell(withImage: data.image, andName: data.description)
        return cell
    }

}

