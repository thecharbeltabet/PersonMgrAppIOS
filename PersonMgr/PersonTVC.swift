//
//  PersonTVC.swift
//  PersonMgr
//
//  Created by Utilisateur invité on 20/06/2022.
//

import UIKit

class PersonTVC: UITableViewController {
    
    var array = [Person]()

    override func viewDidLoad() {
        super.viewDidLoad()
        array.append( Person("Charbel", "Tabet", year: 2000, "Lebanese", gender: "Male"))
        array.append( Person("Sofiane", "Manos", year: 2006, "French", gender: "Male"))
        array.append( Person("Bill", "Tabet", year: 1998, "Lebanese", gender: "Male"))
        array.append( Person("Charbel", "Haddad", year: 1997, "Lebanese", gender: "Male"))
        array.append(Person("Elias", "Abi Najem", year: 1996, "Indian", gender: "Male"))
        array.append(Person("Charbel", "Tabet", year: 1995, "Lebanese", gender: "Male"))
        array.append( Person("Sidi", "Tabet", year: 1994, "Lebanese", gender: "Male"))
        array.append( Person("Lynn", "El khoury", year: 1993, "Pakistani", gender: "Female"))
        array.append(Person("Elissa", "Tabet", year: 1992, "Lebanese", gender: "Female"))
        array.append(Person("Charbel", "Ajami", year: 1992, "Spanish", gender: "Male"))
        array.append( Person("Anthony", "Tabet", year: 1985, "Lebanese", gender: "Female"))
        array.append(Person("Joseph", "Tabet", year: 1973, "Lebanese", gender: "Female"))
        array.append( Person("Awad", "Tabet", year: 1985, "British", gender: "Female"))
        array.append(Person("Sami", "Tabet", year: 2001, "Lebanese", gender: "Female"))
        array.append( Person("Charbel", "Alam", year: 1956, "Swiss", gender: "Female"))
        array.append( Person("Lynn", "El khoury", year: 1993, "Pakistani", gender: "Female"))
        array.append(Person("Elissa", "Tabet", year: 1992, "Lebanese", gender: "Female"))
        array.append(Person("Charbel", "Ajami", year: 1992, "Spanish", gender: "Male"))
        array.append( Person("Anthony", "Tabet", year: 1985, "Lebanese", gender: "Female"))
        array.append(Person("Joseph", "Tabet", year: 1973, "Lebanese", gender: "Female"))
        array.append( Person("Awad", "Tabet", year: 1985, "British", gender: "Female"))
        array.append(Person("Sami", "Tabet", year: 2001, "Lebanese", gender: "Female"))
        array.append( Person("Charbel", "Alam", year: 1956, "Swiss", gender: "Female"))
        
        self.navigationItem.rightBarButtonItem = self.editButtonItem
        
    
    }
    
        

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return array.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        cell.textLabel?.text = array[indexPath.row].firstName! + " " + array[indexPath.row].LastName!
        cell.detailTextLabel?.text = " \(array[indexPath.row].Gender!)  -  \(array[indexPath.row].Age!) Years Old"
        
        
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
            array.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        

    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if segue.identifier == "pushDetail" {
             

             let personDetailVC = segue.destination as! PersonDetailVC
             if let indexPath = tableView.indexPathForSelectedRow{
                 personDetailVC.per = array[indexPath.row]
                 
             }
    } }

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
