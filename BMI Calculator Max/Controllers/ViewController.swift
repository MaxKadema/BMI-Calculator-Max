//
//  ViewController.swift
//  BMI Calculator Max
//
//  Created by Max Kadema on 22.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func hightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value) // форматирование числа в строку 2 числа после точки
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)Kg"
    }
    
}

