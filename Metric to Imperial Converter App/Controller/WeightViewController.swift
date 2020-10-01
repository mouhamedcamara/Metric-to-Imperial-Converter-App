//
//  WeightViewController.swift
//  Metric to Imperial Converter App
//
//  Created by Mouhamed Camara on 9/28/20.
//

import UIKit

class WeightViewController: UIViewController
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
    
    var option = "Grams"
    
    var option1 = "Grams"
        
    var tag: Int!
    
    var result: Double!
    
    var dataSource = [
        "Pounds",
        "Ounces",
        "Stone",
        "Milligrams",
        "Grams",
        "Kilograms",
        "Tons"
    ]
    
    var weight: Weight = .Grams
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        unitsPickerView.delegate = self
        unitsPickerView.dataSource = self
    }
    
    //MARK: Enum
    
    enum Weight
    {
        case Pounds
        case Ounces
        case Stone
        case Milligrams
        case Grams
        case Kilograms
        case Tons
    }
    
    //MARK: Functions
    
    func conversion()
    {
        switch weight
        {
            case .Pounds:
                convertPounds()
            case .Ounces:
                convertOunces()
            case .Stone:
                convertStone()
            case .Milligrams:
                convertMilligrams()
            case .Grams:
                convertGrams()
            case .Kilograms:
                convertKilograms()
            case .Tons:
                convertTons()
        }
    }
    
    func convertPounds()
    {
        guard let number1 = Double(number1TextField.text!) else {return}
                        
        if option == "Kilograms"
        {
            result = number1 / 2.2046
        }
        else if option == "Grams"
        {
            result = number1 / 0.0022046
        }
        else if option == "Ounces"
        {
            result = 16.0 * number1
        }
        else if option == "Tons"
        {
            result = number1 / 2204.6
        }
        else if option == "Stone"
        {
            result = number1 * 0.071429
        }
        else
        {
            createAlert()
        }
        
        number2TextField.text = "\(result!)"
    }
    
    func convertOunces()
    {
        guard let number1 = Double(number1TextField.text!) else {return}
                        
        if option == "Kilograms"
        {
            result = number1 / 35.274
        }
        else if option == "Grams"
        {
            result = number1 / 0.035274
        }
        else if option == "Pounds"
        {
            result = number1 * 0.0625
        }
        else
        {
            createAlert()
        }
        
        number2TextField.text = "\(result!)"
    }
    
    func convertStone()
    {
        guard let number1 = Double(number1TextField.text!) else {return}
                        
        if option == "Kilograms"
        {
            result = number1 / 0.15747
        }
        else if option == "Pounds"
        {
            result = number1 * 14.0
        }
        else
        {
            createAlert()
        }
        
        number2TextField.text = "\(result!)"
    }
    
    func convertMilligrams()
    {
        guard let number1 = Double(number1TextField.text!) else {return}
                        
        if option == "Kilograms"
        {
            result = number1 / 1000000
        }
        else if option == "Ounces"
        {
            result = number1 * 0.000035274
        }
        else if option == "Grams"
        {
            result = number1 / 1000
        }
        else
        {
            createAlert()
        }
        
        number2TextField.text = "\(result!)"
    }
    
    func convertTons()
    {
        guard let number1 = Double(number1TextField.text!) else {return}
                        
        if option == "Kilograms"
        {
            result = number1 / 0.001
        }
        else if option == "Pounces"
        {
            result = number1 * 2204.6
        }
        else if option == "Ounces"
        {
            result = number1 / 35274
        }
        else
        {
            createAlert()
        }
        
        number2TextField.text = "\(result!)"
    }
    
    func convertGrams()
    {
        guard let number1 = Double(number1TextField.text!) else {return}
                        
        if option == "Kilograms"
        {
            result = number1 / 1000
        }
        else if option == "Pounces"
        {
            result = number1 * 0.0022046
        }
        else if option == "Ounces"
        {
            result = number1 * 0.035274
        }
        else if option == "Tons"
        {
            result = number1 / 1000000
        }
        else if option == "Miligrams"
        {
            result = number1 * 1000
        }
        else
        {
            createAlert()
        }
        
        number2TextField.text = "\(result!)"
    }
    
    func convertKilograms()
    {
        guard let number1 = Double(number1TextField.text!) else {return}
                        
        if option == "Grams"
        {
            result = number1 / 0.001
        }
        else if option == "Milligrams"
        {
            result = number1 / 0.000001
        }
        else if option == "Tons"
        {
            result = number1 / 1000
        }
        else if option == "Pounces"
        {
            result = number1 * 2.2046
        }
        else if option == "Ounces"
        {
            result = number1 * 35.274
        }
        else if option == "Stone"
        {
            result = number1 * 0.15747
        }
        else
        {
            createAlert()
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

extension WeightViewController: UIPickerViewDelegate, UIPickerViewDataSource
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
            
            if option1 == "Grams"
            {
                weight = .Grams
            }
            else if option1 == "Milligrams"
            {
                weight = .Milligrams
            }
            else if option1 == "Kilograms"
            {
                weight = .Kilograms
            }
            else if option1 == "Tons"
            {
                weight = .Tons
            }
            else if option1 == "Pounds"
            {
                weight = .Pounds
            }
            else if option1 == "Ounces"
            {
                weight = .Ounces
            }
            else if option1 == "Stone"
            {
                weight = .Stone
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

