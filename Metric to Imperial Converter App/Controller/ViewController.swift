//
//  ViewController.swift
//  Metric to Imperial Converter App
//
//  Created by Mouhamed Camara on 9/28/20.
//

import UIKit

class ViewController: UIViewController
{
    //MARK: Outlets
    
    @IBOutlet weak var selectedButton: UIButton!
    
    @IBOutlet weak var optionsPickerView: UIPickerView!
    
    @IBOutlet weak var fowardButton: UIButton!
    
    //MARK: Actions
    
    @IBAction func selectedButtonAction(_ sender: UIButton)
    {
        optionsPickerView.isHidden = false
    }
    
    @IBAction func forwardButtonAction(_ sender: UIButton)
    {
        if option == "Weight"
        {
            performSegue(withIdentifier: "segueToWeight", sender: nil)
        }
        else if option == "Lenght"
        {
            performSegue(withIdentifier: "segueToLenght", sender: nil)
        }
        else if option == "Volume"
        {
            performSegue(withIdentifier: "segueToVolume", sender: nil)
        }
        else
        {
            performSegue(withIdentifier: "segueToTemperature", sender: nil)
        }
        
    }
    
    //MARK: Properties
    
    var option: String!
    
    var dataSource = ["Weight", "Lenght", "Volume", "Temperature"]

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        optionsPickerView.delegate = self
        optionsPickerView.dataSource = self
    }


}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource
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
        option = dataSource[row]
        self.selectedButton.setTitle(option, for: .normal)
        self.optionsPickerView.isHidden = true
        self.fowardButton.isHidden = false
    }
    
}

