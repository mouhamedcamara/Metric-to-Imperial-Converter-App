//
//  VolumeViewController.swift
//  Metric to Imperial Converter App
//
//  Created by Mouhamed Camara on 9/28/20.
//

import UIKit

class VolumeViewController: UIViewController
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
    
    var option = "Liters"
    
    var option1 = "Liters"
        
    var tag: Int!
    
    var result: Double!
    
    var dataSource = [
        "Teaspoon",
        "Tablespoon",
        "Cups",
        "Quarts",
        "Gallons",
        "Milliliters",
        "Deciliters",
        "Liters"
    ]
    
    var volume: Volume = .Liters
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        unitsPickerView.delegate = self
        unitsPickerView.dataSource = self
    }
    
    //MARK: Enum
    
    enum Volume
    {
        case Teaspoon
        case Tablespoon
        case Cups
        case Quarts
        case Gallons
        case Milliliters
        case Deciliters
        case Liters
    }
    
    //MARK: Functions
    
    func conversion()
    {
        switch volume
        {
            case .Teaspoon:
                convertTeaspoon()
            case .Tablespoon:
                    convertTablespoon()
            case .Cups:
                    convertCups()
            case .Quarts:
                    convertQuarts()
            case .Gallons:
                    convertGallons()
            case .Milliliters:
                    convertMilliliters()
            case .Deciliters :
                    convertDeciliters()
            case .Liters:
                convertLiters()
        }
    }
    
    func convertTeaspoon()
    {
        guard let number1 = Double(number1TextField.text!) else {return}
                        
        if option == "Tablespoon"
        {
            result = number1 / 3
        }
        else if option == "Cups"
        {
            result = number1 / 48
        }
        else if option == "Quarts"
        {
            result = number1 / 192
        }
        else if option == "Gallons"
        {
            result = number1 / 768
        }
        else if option == "Milliliters"
        {
            result = number1 * 5.919
        }
        else if option == "Deciliters" //////
        {
            result = number1 * 12
        }
        else if option == "Liters"
        {
            result = number1 / 169
        }
        
        number2TextField.text = "\(result!)"
    }
    
    func convertTablespoon()
    {
        guard let number1 = Double(number1TextField.text!) else {return}
        
        if option == "Teaspoon"
        {
            result = number1 * 3
        }
        else if option == "Cups"
        {
            result = number1 / 16
        }
        else if option == "Quarts"
        {
            result = number1 / 64
        }
        else if option == "Gallons"
        {
            result = number1 / 256
        }
        else if option == "Milliliters"
        {
            result = number1 * 17.758
        }
        else if option == "Deciliters" //////
        {
            result = number1 * 12
        }
        else if option == "Liters"
        {
            result = number1 / 56.312
        }
        
        
        number2TextField.text = "\(result!)"
    }
    
    func convertCups()
    {
        guard let number1 = Double(number1TextField.text!) else {return}
                        
        if option == "Teaspoon"
        {
            result = number1 * 57.646
        }
        else if option == "Tablespoon"
        {
            result = number1 / 16
        }
        else if option == "Quarts"
        {
            result = number1 / 4
        }
        else if option == "Gallons"
        {
            result = number1 / 16
        }
        else if option == "Milliliters"
        {
            result = number1 * 284
        }
        else if option == "Deciliters" //////
        {
            result = number1 * 12
        }
        else if option == "Liters"
        {
            result = number1 / 3.52
        }
        
        number2TextField.text = "\(result!)"
    }
    
    func convertQuarts()
    {
        guard let number1 = Double(number1TextField.text!) else {return}
                        
        if option == "Teaspoon"
        {
            result = number1 * 192
        }
        else if option == "Cups"
        {
            result = number1 / 4
        }
        else if option == "Tablespoon"
        {
            result = number1 * 64
        }
        else if option == "Gallons"
        {
            result = number1 / 4
        }
        else if option == "Milliliters"
        {
            result = number1 * 1137
        }
        else if option == "Deciliters" //////
        {
            result = number1 * 12
        }
        else if option == "Liters"
        {
            result = number1 / 1.137
        }
        
        number2TextField.text = "\(result!)"
    }
    
    func convertGallons()
    {
        guard let number1 = Double(number1TextField.text!) else {return}
        
        if option == "Teaspoon"
        {
            result = number1 * 768
        }
        else if option == "Cups"
        {
            result = number1 / 16
        }
        else if option == "Quarts"
        {
            result = number1 / 4
        }
        else if option == "Tablespoon"
        {
            result = number1 / 256
        }
        else if option == "Milliliters"
        {
            result = number1 * 4556
        }
        else if option == "Deciliters" //////
        {
            result = number1 * 12
        }
        else if option == "Liters"
        {
            result = number1 / 4.546
        }
        
        number2TextField.text = "\(result!)"
    }
    
    func convertMilliliters()
    {
        guard let number1 = Double(number1TextField.text!) else {return}
                        
        if option == "Teaspoon"
        {
            result = number1 / 5.919
        }
        else if option == "Cups"
        {
            result = number1 / 284
        }
        else if option == "Quarts"
        {
            result = number1 / 1137
        }
        else if option == "Gallons"
        {
            result = number1 / 4546
        }
        else if option == "Tablespoon"
        {
            result = number1 / 17.758
        }
        else if option == "Deciliters"
        {
            result = number1 / 10
        }
        else if option == "Liters"
        {
            result = number1 / 1000
        }
        
        number2TextField.text = "\(result!)"
    }
    
    func convertDeciliters()
    {
        guard let number1 = Double(number1TextField.text!) else {return}
                        
        if option == "Teaspoon"
        {
            result = number1 * 3
        }
        else if option == "Cups"
        {
            result = number1 / 16
        }
        else if option == "Quarts"
        {
            result = number1 / 64
        }
        else if option == "Gallons"
        {
            result = number1 / 256
        }
        else if option == "Milliliters"
        {
            result = number1 * 17.758
        }
        else if option == "Tablespoon"
        {
            result = number1 * 12
        }
        else if option == "Liters"
        {
            result = number1 / 56.312
        }
        
        number2TextField.text = "\(result!)"
    }
    
    func convertLiters()
    {
        guard let number1 = Double(number1TextField.text!) else {return}
                        
        if option == "Teaspoon"
        {
            result = number1 * 169
        }
        else if option == "Cups"
        {
            result = number1 / 3.52
        }
        else if option == "Quarts"
        {
            result = number1 / 1.137
        }
        else if option == "Gallons"
        {
            result = number1 / 4.546
        }
        else if option == "Milliliters"
        {
            result = number1 / 1000
        }
        else if option == "Deciliters" //////
        {
            result = number1 / 100
        }
        else if option == "Tablespoon"
        {
            result = number1 * 56.312
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

extension VolumeViewController: UIPickerViewDelegate, UIPickerViewDataSource
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
            
            if option1 == "Teaspoon"
            {
                volume = .Teaspoon
            }
            else if option1 == "Tablespoon"
            {
                volume = .Tablespoon
            }
            else if option1 == "Cups"
            {
                volume = .Cups
            }
            else if option1 == "Quarts"
            {
                volume = .Quarts
            }
            else if option1 == "Gallons"
            {
                volume = .Gallons
            }
            else if option1 == "Milliliters"
            {
                volume = .Milliliters
            }
            else if option1 == "Deciliters"
            {
                volume = .Deciliters
            }
            else if option1 == "Liters"
            {
                volume = .Liters
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



