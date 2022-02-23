//
//  CalculatorBrain.swift
//  BMI Calculator Max
//
//  Created by Max Kadema on 23.02.2022.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    func getBMIValue() -> String {
        let  bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.5148504376, green: 0.8228202462, blue: 0.8213654757, alpha: 1)
    }
   
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        // для легкого доступа к картинкам или цветам используются литералы
        //литералу нужно сначала создать в кортеже, а затем использовать в коде #colorLiteral(
        let colors = (underweight: #colorLiteral(red: 0.6, green: 0.8431372549, blue: 0.9529411765, alpha: 1), normalweight: #colorLiteral(red: 0.7607843137, green: 0.9137254902, blue: 0.568627451, alpha: 1), overweight: #colorLiteral(red: 0.7529411765, green: 0.3725490196, blue: 0.5882352941, alpha: 1))
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: colors.underweight )
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fir as a fiddle", color: colors.normalweight)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: colors.overweight)
        }
        
    }
}
