//
//  LenghtViewController.swift
//  Metric to Imperial Converter App
//
//  Created by Mouhamed Camara on 9/28/20.
//

import UIKit

class LenghtViewController: UIViewController
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
        conversion()
    }
    
    //MARK: Properties
    
    var option = "Meters"
    
    var option1 = "Meters"
        
    var tag: Int!
    
    var result: Double!
    
    var dataSource = [
        "Inches",
        "Feet",
        "Yards",
        "Miles",
        "Millimeters",
        "Centimeters",
        "Meters",
        "Kilometers"
    ]
    
    var lenght: Lenght = .Meters
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        unitsPickerView.delegate = self
        unitsPickerView.dataSource = self
    }
    
    //MARK: Enum
    
    enum Lenght
    {
        case Inches
        case Feet
        case Yards
        case Miles
        case Millimeters
        case Centimeters
        case Meters
        case Kilometers
    }
    
    //MARK: Functions
    
    func conversion()
    {
        switch lenght
        {
            case .Inches:
                convertInches()
            case .Feet:
                    convertFeet()
            case .Yards:
                    convertYards()
                case .Miles:
                    convertMiles()
            case .Millimeters:
                    convertMillimeters()
            case .Centimeters:
                    convertCentimeters()
            case .Meters :
                    convertMeters()
            case .Kilometers:
                convertKilometers()
        }
    }
    
    func convertInches()
    {
        guard let number1 = Double(number1TextField.text!) else {return}
                        
        if option == "Kilometers"
        {
            result = number1 / 39370
        }
        else if option == "Meters"
        {
            result = number1 / 39.37
        }
        else if option == "Centimeters"
        {
            result = number1 / 0.3937
        }
        else if option == "Millimeters"
        {
            result = number1 / 0.03937
        }
        else if option == "Yards"
        {
            result = number1 / 36
        }
        else if option == "Feet"
        {
            result = number1 / 0.083
        }
        else if option == "Miles"
        {
            result = number1 / 63360
        }
        
        number2TextField.text = "\(result!)"
    }
    
    func convertFeet()
    {
        guard let number1 = Double(number1TextField.text!) else {return}
                        
        if option == "Kilometers"
        {
            result = number1 / 3280.8
        }
        else if option == "Meters"
        {
            result = number1 / 3.2808
        }
        else if option == "Centimeters"
        {
            result = number1 / 0.03808
        }
        else if option == "Millimeters"
        {
            result = number1 / 0.003808
        }
        else if option == "Yards"
        {
            result = number1 / 3
        }
        else if option == "Inches"
        {
            result = number1 * 12
        }
        else if option == "Miles"
        {
            result = number1 / 0.00018939
        }
        
        number2TextField.text = "\(result!)"
    }
    
    func convertYards()
    {
        guard let number1 = Double(number1TextField.text!) else {return}
                        
        if option == "Kilometers"
        {
            result = number1 / 1094
        }
        else if option == "Meters"
        {
            result = number1 / 1.094
        }
        else if option == "Centimeters"
        {
            result = number1 * 91.44
        }
        else if option == "Millimeters"
        {
            result = number1 * 914.4
        }
        else if option == "Inches"
        {
            result = number1 * 36
        }
        else if option == "Feet"
        {
            result = number1 * 3
        }
        else if option == "Miles"
        {
            result = number1 / 1760
        }
        
        number2TextField.text = "\(result!)"
    }
    
    func convertMiles()
    {
        guard let number1 = Double(number1TextField.text!) else {return}
                        
        if option == "Kilometers"
        {
            result = number1 * 1.609
        }
        else if option == "Meters"
        {
            result = number1 * 1609
        }
        else if option == "Centimeters"
        {
            result = number1 * 160934
        }
        else if option == "Millimeters"
        {
            result = number1 * 16093400
        }
        else if option == "Yards"
        {
            result = number1 * 1760
        }
        else if option == "Feet"
        {
            result = number1 * 8280
        }
        else if option == "Inches"
        {
            result = number1 * 63360
        }
        
        number2TextField.text = "\(result!)"
    }
    
    func convertKilometers()
    {
        guard let number1 = Double(number1TextField.text!) else {return}
        
        if option == "Meters"
        {
            result = number1 * 1000
        }
        else if option == "Centimeters"
        {
            result = number1 * 100000
        }
        else if option == "Millimeters"
        {
            result = number1 * 1000000
        }
        else if option == "Yards"
        {
            result = number1 * 1094
        }
        else if option == "Feet"
        {
            result = number1 * 3281
        }
        else if option == "Inches"
        {
            result = number1 * 39370
        }
        else if option == "Miles"
        {
            result = number1 / 1.609
        }
        
        number2TextField.text = "\(result!)"
    }
    
    func convertMeters()
    {
        guard let number1 = Double(number1TextField.text!) else {return}
                        
        if option == "Kilometers"
        {
            result = number1 / 1000
        }
        else if option == "Centimeters"
        {
            result = number1 * 100
        }
        else if option == "Millimeters"
        {
            result = number1 * 1000
        }
        else if option == "Yards"
        {
            result = number1 * 1.094
        }
        else if option == "Feet"
        {
            result = number1 * 3.281
        }
        else if option == "Inches"
        {
            result = number1 * 39.370
        }
        else if option == "Miles"
        {
            result = number1 / 1609
        }
        
        number2TextField.text = "\(result!)"
    }
    
    func convertCentimeters()
    {
        guard let number1 = Double(number1TextField.text!) else {return}
                        
        if option == "Kilometers"
        {
            result = number1 / 100000
        }
        else if option == "Meters"
        {
            result = number1 / 100
        }
        else if option == "Millimeters"
        {
            result = number1 * 10
        }
        else if option == "Yards"
        {
            result = number1 / 91.44
        }
        else if option == "Feet"
        {
            result = number1 / 30.48
        }
        else if option == "Inches"
        {
            result = number1 / 2.54
        }
        else if option == "Miles"
        {
            result = number1 / 160934
        }
        
        number2TextField.text = "\(result!)"
    }
    
    func convertMillimeters()
    {
        guard let number1 = Double(number1TextField.text!) else {return}
                        
        if option == "Kilometers"
        {
            result = number1 / 1000000
        }
        else if option == "Meters"
        {
            result = number1 / 1000
        }
        else if option == "Centimeters"
        {
            result = number1 / 10
        }
        else if option == "Yards"
        {
            result = number1 / 914.4
        }
        else if option == "Feet"
        {
            result = number1 / 304.8
        }
        else if option == "Inches"
        {
            result = number1 / 25.4
        }
        else if option == "Miles"
        {
            result = number1 / 1609340
        }
        
        number2TextField.text = "\(result!)"
    }

    
    //MARK: Alerte

    func createAlert()
    {
        let alert = UIAlertController(title: "Alerte", message: "Can't convert these two!", preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
            
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
}

extension LenghtViewController: UIPickerViewDelegate, UIPickerViewDataSource
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
            
            if option1 == "Inches"
            {
                lenght = .Inches
            }
            else if option1 == "Feet"
            {
                lenght = .Feet
            }
            else if option1 == "Yards"
            {
                lenght = .Yards
            }
            else if option1 == "Miles"
            {
                lenght = .Miles
            }
            else if option1 == "Millimeters"
            {
                lenght = .Millimeters
            }
            else if option1 == "Centimeters"
            {
                lenght = .Centimeters
            }
            else if option1 == "Meters"
            {
                lenght = .Meters
            }
            else if option1 == "Kilometers"
            {
                lenght = .Kilometers
            }
            
            unit1Button.setTitle(option1, for: .normal)
        }
        else if tag == 2
        {
            option = dataSource[row]
            unit2Button.setTitle(option, for: .normal)
        }
        
        unitsPickerView.isHidden = true
    }
}
