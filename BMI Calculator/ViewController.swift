//
//  ViewController.swift
//  BMI Calculator
//
//  Created by VISHAL on 2019-12-11.
//  Student ID: 301090878
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var name: UITextField!
    var nameText = ""
     var ageText = ""
     var genderText = ""
    var score = ""
    var category = ""
    
    @IBOutlet weak var age: UITextField!
    
    @IBOutlet weak var gender: UITextField!
    
    
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var bmiScore: UILabel!
    @IBOutlet weak var bmiCategory: UILabel!
    
    @IBAction func sliderValueChanged(_ sender: Any?) {
        var result: Double = 0
        let weight = Double(weightSlider!.value)
        let height = Double(heightSlider!.value)
        
        weightLabel.text = String(format: "%.1f", weight)
        heightLabel.text = String(format: "%.2f", height)
        
        result = calculateBMI(with: weight, and: height)
        
        setBmiCategory(for: result)
        
        bmiScore.text = "BMI = \(String(format: "%.2f", result))"
    }
    
    func calculateBMI(with weight: Double, and height: Double) -> Double {
        return weight / pow(height, 2)
    }
    
    func setBmiCategory(for value: Double) {
        switch value {
            case ..<18.5:
                bmiCategory.text = "Underweight"
                bmiCategory.backgroundColor = UIColor.purple
            case 18.5..<24.9:
                bmiCategory.text = "Healthy"
                bmiCategory.backgroundColor = UIColor.green
            case 25..<29.9:
                bmiCategory.text = "Overweight"
                bmiCategory.backgroundColor = UIColor.yellow
            case 30..<34.9:
                bmiCategory.text = "Severely Overweight"
                bmiCategory.backgroundColor = UIColor.orange
            case 35...:
                bmiCategory.text = "Morbidly Overweight"
                bmiCategory.backgroundColor = UIColor.red
            default:
                bmiCategory.text = "UNKNOWN"
                bmiCategory.backgroundColor = UIColor.gray
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        weightSlider.value = 30
        heightSlider.value = 1.74
        
        sliderValueChanged(nil)
    }
    
    
    @IBAction func calculate(_ sender: Any) {
        
        self.nameText = name.text!
        self.ageText = age.text!
        self.genderText = gender.text!
        self.score = bmiScore.text!
        
        
//        performSegue(withIdentifier: "calculatebutton", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as! SecondViewController
        vc.finalname = self.nameText
        vc.finalage = self.ageText
        vc.finalgender = self.genderText
        vc.finalscore = self.score
        
    }
}

