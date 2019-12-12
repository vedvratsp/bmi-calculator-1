//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by VISHAL on 2019-12-11.
//  Student ID: 301090878
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var age: UILabel!
    
    @IBOutlet weak var gender: UILabel!
    
    @IBOutlet weak var score: UILabel!
    
    
    var finalname = ""
    var finalage = ""
    var finalgender = ""
    var finalscore = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        name.text = finalname
        age.text = finalage
        gender.text = finalgender
        score.text = finalscore
        
        // Do any additional setup after loading the view.
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
