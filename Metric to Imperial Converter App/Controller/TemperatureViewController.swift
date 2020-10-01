//
//  TemperatureViewController.swift
//  Metric to Imperial Converter App
//
//  Created by Mouhamed Camara on 9/28/20.
//

import UIKit

class TemperatureViewController: UIViewController
{
    //MARK: Outlets
    @IBOutlet weak var number1TextField: UITextField!
    
    @IBOutlet weak var unit1Button: UIButton!
    
    @IBOutlet weak var number2TextField: UITextField!
    
    @IBOutlet weak var unit2Button: UIButton!
    
    
    @IBOutlet weak var unitsPickerView: UIPickerView!
    
    //MARK: Actions
    
    
    @IBAction func unit1ButtonAction(_ sender: UIButton)
    {
        tag = 1
        unitsPickerView.isHidden = false
    }
    
    @IBAction func unit2ButtonAction(_ sender: UIButton)
    {
        tag = 2
        unitsPickerView.isHidden = false
    }
    
    
    @IBAction func conversionButtonAction(_ sender: UIButton)
    {
        convertTemperature()
    }
    
    
    //MARK: Properties
    
    var option1 = "Celsius"
    
    var option2 = "Fahrenheit"
    
    var tag: Int!
    
    var result: Double!
    
    var dataSource = [
        "Celsius",
        "Fahrenheit"
    ]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        unitsPickerView.delegate = self
        unitsPickerView.dataSource = self
    }
    
    //MARK: Functions
    
    func convertTemperature()
    {
        guard let number1 = Double(number1TextField.text!) else {return}
                        
        if option1 == "Celsius" && option2 == "Fahrenheit"
        {
            result = number1 * 1.8 + 32
        }
        else if option1 == "Fahrenheit" && option2 == "Celsius"
        {
            result = (number1 - 32) / 1.8
        }
        else if option1 == option2
        {
            result = number1
        }
        
        number2TextField.text = "\(result!)"
    }
}

extension TemperatureViewController: UIPickerViewDelegate, UIPickerViewDataSource
{
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return dataSource.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString?
    {
        let selected = dataSource[row]
        
        let attributes = NSAttributedString.init(string: selected, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white, NSAttributedString.Key.font: UIFont(name: "Avenir Heavy", size: 24)!])
        
        return attributes
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if tag == 1
        {
            option1 = dataSource[row]
            unit1Button.setTitle(option1, for: .normal)
        }
        else if tag == 2
        {
            option2 = dataSource[row]
            unit2Button.setTitle(option2, for: .normal)
        }
        
        unitsPickerView.isHidden = true
    }
}

