//
//  ViewController.swift
//  HW2.2.1
//
//  Created by Георгий Бутров on 25.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var viewController: UIView!
    
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    @IBOutlet var labelRed: UILabel!
    @IBOutlet var labelGreen: UILabel!
    @IBOutlet var labelBlue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // view
        viewController.layer.cornerRadius = 15
        setViewColor()
        
        // labels and sliders
        setColorSettings(labelRed, sliderRed, .red)
        setColorSettings(labelGreen, sliderGreen, .green)
        setColorSettings(labelBlue, sliderBlue, .blue)
    }
    
    private func setColorSettings(_ label: UILabel, _ slider: UISlider, _ color: UIColor) {
        label.textColor = color
        slider.minimumTrackTintColor = color
        setLabelText(label, slider)
    }
    
    private func setViewColor() {
        viewController.backgroundColor = .init(
            red: CGFloat(sliderRed.value),
            green: CGFloat(sliderGreen.value),
            blue: CGFloat(sliderBlue.value),
            alpha: 1)
    }

    private func setLabelText(_ label: UILabel, _ slider: UISlider) {
        label.text = String(round(slider.value * 100) / 100)
    }
    
    @IBAction func sliderAction() {
        setLabelText(labelRed, sliderRed)
        setLabelText(labelGreen, sliderGreen)
        setLabelText(labelBlue, sliderBlue)
        setViewColor()
    }
}
