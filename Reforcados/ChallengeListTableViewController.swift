//
//  ChallengeListTableViewController.swift
//  Reforcados
//
//  Created by student on 09/08/19.
//  Copyright © 2019 Hackatruck. All rights reserved.
//

import UIKit

class ChallengeListTableViewController: UITableViewController {

    var challengeList = [Challenge]()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        challengeList = ChallengeDAO.getList()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return challengeList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "challengeItemCell", for: indexPath) as! ChallengeItemTableViewCell

        cell.challengeNameLabel.text = challengeList[indexPath.row].name
        cell.descriptionLabel.text = challengeList[indexPath.row].description
        cell.dueDateLabel.text = challengeList[indexPath.row].dueDate.description

        return cell
    }


//    // Override to support conditional editing of the table view.
//    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
//        // Return false if you do not want the specified item to be editable.
//        return true
//    }
//    

    
//    // Override to support editing the table view.
//    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
//        if editingStyle == .delete {
//            // Delete the row from the data source
//            tableView.deleteRows(at: [indexPath], with: .fade)
//            challengeList.remove(at: indexPath.row)
//        } else if editingStyle == .insert {
//            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
//            
//            // challengeList.append...
//        }    
//    }
    

//    
//    // Override to support rearranging the table view.
//    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
//
//    }
//    
//
//    
//    // Override to support conditional rearranging of the table view.
//    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
//        // Return false if you do not want the item to be re-orderable.
//        return true
//    }
//    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "solveChallengeSegue" {

            if let newView = segue.destination as? SolvingChallengeViewController {
                if let selectedCell = tableView.indexPathForSelectedRow?.row {
                    newView.challenge = challengeList[selectedCell]
                }
            }
        }
    }
    

}
