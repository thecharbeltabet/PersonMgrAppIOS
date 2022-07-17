//
//  PersonDetailVC.swift
//  PersonMgr
//
//  Created by Utilisateur invité on 20/06/2022.
//

import UIKit

class PersonDetailVC: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var genderLabel: UILabel!
    @IBOutlet var yearLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var nationalityLabel: UILabel!
    var per : Person?

    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = per?.firstName
        
        genderLabel.text = per?.Gender
        

        
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
