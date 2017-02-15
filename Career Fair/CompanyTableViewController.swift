//
//  CompanyTableViewController.swift
//  Career Fair
//
//  Created by Rohan Rk on 2/12/17.
//  Copyright © 2017 Rohan Rk. All rights reserved.
//

import UIKit

class CompanyTableViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var companyTable: UITableView!
    private let database = CompanyDatabase()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.companyTable.dataSource = self
        self.title = "Companies"
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(true)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.database.numCompanies
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Company Cell", for: indexPath)
        // Configure the cell...
        let company = self.database.company(atIndex: indexPath.row)
        cell.textLabel?.text = "\(company.table).) " + company.name
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let companyVC = segue.destination as? CompanyViewController {
            if let selectedCell = sender as? UITableViewCell,
                let selectedIndex = companyTable.indexPath(for: selectedCell) {
                companyVC.company = self.database.company(atIndex: selectedIndex.row)
            }
        }
        
    }

}
