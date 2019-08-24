//
//  SightListTableViewController.swift
//  MCitySight
//
//  Created by Yuqi Zhang on 24/8/19.
//  Copyright © 2019 Monash University. All rights reserved.
//

import UIKit

class SightListTableViewController: UITableViewController {
    
    var sightList: [Sight] = []
    
    func addDefaultSights(){
        sightList.append(Sight(name: "Town Hall", desc: "jceiwcoiewnaonerivenrivjfiowjfefjjfoiw"))
        sightList.append(Sight(name: "State Library", desc: "cjwoijfoweijfiwjeiojfewifjiawejfijfi"))
        sightList.append(Sight(name: "RMIT", desc: "ciosconweicniwenaoindjoiwejfiewjfioejwf"))
        sightList.append(Sight(name: "Melbourne Central", desc: "cnwoieiojoiewfioevniowen"))
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        addDefaultSights()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return sightList.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sightListCell", for: indexPath) as! SightListTableViewCell
        
        // Configure the cell...
        let sight = sightList[indexPath.row]
        cell.nameLable.text = sight.name
        cell.descLable.text = sight.desc

        return cell
    }


    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // TODO: comfirmation
            
            // Delete the row from the data source
            self.sightList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        return
    }


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "SightDetialSegue", let destination = segue.destination as? SightDetailViewController, let sightIndex = tableView.indexPathForSelectedRow?.row
        {
            destination.sight = sightList[sightIndex]
        }
    }


}
