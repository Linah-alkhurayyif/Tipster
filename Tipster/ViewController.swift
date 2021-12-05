//
//  ViewController.swift
//  Tipster
//
//  Created by Leena 1418 on 05/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var totalNumber =  ""
    var numberInput : Float = 0
    var group_Size = 1
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var groupSizeLabel: UILabel!
    
    @IBOutlet weak var percenLabel1: UILabel!
    @IBOutlet weak var percenLabel2: UILabel!
    @IBOutlet weak var percenLabel3: UILabel!
    
    @IBOutlet weak var tipLabel1: UILabel!
    @IBOutlet weak var tipLabel2: UILabel!
    @IBOutlet weak var tipLabel3: UILabel!
    
    @IBOutlet weak var totalLabel1: UILabel!
    @IBOutlet weak var totalLabel2: UILabel!
    @IBOutlet weak var totalLabel3: UILabel!
    
    var percen1 = 5
    var percen2 = 10
    var percen3 = 15
    
    func calculateTipsTotal(){
        percenLabel1.text = "\(percen1)%"
        percenLabel2.text = "\(percen2)%"
        percenLabel3.text = "\(percen3)%"
       
        if totalNumber != ""{
            numberInput = Float(totalNumber)!
          
            tipLabel1.text = String(format: "%.2f", (numberInput * Float(percen1)/Float(100))/Float(group_Size))
            tipLabel2.text = String(format: "%.2f", (numberInput * Float(percen2)/Float(100))/Float(group_Size))
            tipLabel3.text = String(format: "%.2f", (numberInput * Float(percen3)/Float(100))/Float(group_Size))
         

            totalLabel1.text = String(format: "%.2f", (numberInput+(numberInput * Float(percen1)/Float(100)))/Float(group_Size))
            totalLabel2.text = String(format: "%.2f", (numberInput+(numberInput * Float(percen2)/Float(100)))/Float(group_Size))
            totalLabel3.text = String(format: "%.2f", (numberInput+(numberInput * Float(percen3)/Float(100)))/Float(group_Size))
        }
    }
    
    @IBAction func tipSlider(_ sender: UISlider) {
        percen1 = Int(round((0.05+sender.value)*100))
        percen2 = Int(round((0.1+sender.value)*100))
        percen3 = Int(round((0.2+sender.value)*100))
    
        calculateTipsTotal()
    }
    
    @IBAction func groupSize(_ sender: UISlider) {
        group_Size = Int(round(sender.value*100))
        groupSizeLabel.text = "Group Size: \(group_Size)"
        calculateTipsTotal()
    }
    
    @IBAction func number7(_ sender: UIButton) {
        totalNumber = totalNumber + "7"
        numberLabel.text = totalNumber
        calculateTipsTotal()
    }
    @IBAction func number4(_ sender: UIButton) {
        totalNumber = totalNumber + "4"
        numberLabel.text = totalNumber
        calculateTipsTotal()
    }
    @IBAction func number1(_ sender: UIButton) {
        totalNumber = totalNumber + "1"
        numberLabel.text = totalNumber
        calculateTipsTotal()
    }
    @IBAction func clearNumberLabel(_ sender: UIButton) {
        numberLabel.text = "0"
        totalNumber = ""
    }
    @IBAction func number8(_ sender: UIButton) {
        totalNumber = totalNumber + "8"
        numberLabel.text = totalNumber
        calculateTipsTotal()
    }
    @IBAction func number5(_ sender: UIButton) {
        totalNumber = totalNumber + "5"
        numberLabel.text = totalNumber
        calculateTipsTotal()
    }
    @IBAction func number2(_ sender: UIButton) {
        totalNumber = totalNumber + "2"
        numberLabel.text = totalNumber
        calculateTipsTotal()
    }
    @IBAction func number0(_ sender: UIButton) {
        totalNumber = totalNumber + "0"
        numberLabel.text = totalNumber
        calculateTipsTotal()
    }
    @IBAction func number9(_ sender: UIButton) {
        totalNumber = totalNumber + "9"
        numberLabel.text = totalNumber
        calculateTipsTotal()
    }
    @IBAction func number6(_ sender: UIButton) {
        totalNumber = totalNumber + "6"
        numberLabel.text = totalNumber
        calculateTipsTotal()
    }
    @IBAction func number3(_ sender: UIButton) {
        totalNumber = totalNumber + "3"
        numberLabel.text = totalNumber
        calculateTipsTotal()
    }
    @IBAction func dot(_ sender: UIButton) {
        totalNumber = totalNumber + "."
        numberLabel.text = totalNumber
        calculateTipsTotal()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        numberLabel.text = numberLabel.text
    }


}

