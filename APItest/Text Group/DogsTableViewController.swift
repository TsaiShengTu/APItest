//
//  DogsTableViewController.swift
//  APItest
//
//  Created by Sheng-Yu on 2022/9/30.
//

import UIKit

class DogsTableViewController: UITableViewController {
    
    let dogg = UserDefaults()
    
    
    var dog = [Dogs(name: "豆豆", sex: "F", age: "2", 品種: "瑪爾濟斯", pic: "1")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    
    @IBAction func unwindTodogsTableview(_ unwindSegue: UIStoryboardSegue) {
        if let sourceViewController = unwindSegue.source as? DogsAddTableViewController,
        let dogx = sourceViewController.dogAdd{
            dog.insert(dogx,at:0)
            let indexPath = IndexPath(row: 0, section: 0)
            tableView.insertRows(at: [indexPath], with: .automatic)
            let dogUser = UserDefaults().set(dogx, forKey: "dog")
            
        }
        // Use data from the view controller which initiated the unwind segue
    }
   

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dog.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DogTableViewCell", for: indexPath) as! DogTableViewCell
        
        let dogSintroll = dog[indexPath.row]
        cell.nameLable.text = dogSintroll.name
        cell.sexLable.text = dogSintroll.sex
        cell.ageLable.text = dogSintroll.age
        cell.ggyyLable.text = dogSintroll.品種
        cell.imageDogimageview.image  = UIImage(named: dogSintroll.pic)

        // Configure the cell...

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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
