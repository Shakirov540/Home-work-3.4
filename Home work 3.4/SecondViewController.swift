//
//  SecondViewController.swift
//  Home work 3.4
//
//  Created by Айбек Шакиров on 5/12/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var addressesTableView: UITableView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addressesTableView.reloadData()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        addressesTableView.reloadData()
    }
}


extension SecondViewController: UITableViewDataSource  {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return addresses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = addressesTableView.dequeueReusableCell(withIdentifier: "address_cell", for: indexPath) as! AddressCell
        
        cell.addresssLabel.text = addresses[indexPath.row].address
        
        cell.costLabel.text = addresses[indexPath.row].cost
        
        return cell
    }
}


extension SecondViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}
