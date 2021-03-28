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
    
    private func setViewColor() {
        viewController.backgroundColor = .init(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1)
    }

    private func setLabelText(_ label: UILabel!, _ slider: UISlider!) {
        label.text = String(round(slider.value * 100) / 100)
    }
    
    override func viewDidLoad() {

        super.viewDidLoad()
        
        // view
        viewController.layer.cornerRadius = 15
        setViewColor()
        // labels
        
        labelRed.textColor = .red
        labelGreen.textColor = .green
        labelBlue.textColor = .blue
        
        setLabelText(labelRed, sliderRed)
        setLabelText(labelGreen, sliderGreen)
        setLabelText(labelBlue, sliderBlue)
        
        
        // sliders
        sliderRed.minimumTrackTintColor = .red
        sliderGreen.minimumTrackTintColor = .green
        sliderBlue.minimumTrackTintColor = .blue
        
        sliderRed.minimumValue = 0
        sliderRed.maximumValue = 1
        
        sliderGreen.minimumValue = 0
        sliderGreen.maximumValue = 1
        sliderBlue.minimumValue = 0
        sliderBlue.maximumValue = 1
        
    }

    @IBAction func sliderRedAction() {
        setLabelText(labelRed, sliderRed)
        setViewColor()
    }
    @IBAction func sliderGreenAction() {
        setLabelText(labelGreen, sliderGreen)
        setViewColor()
    }
    @IBAction func sliderBlueAction() {
        setLabelText(labelBlue, sliderBlue)
        setViewColor()
    }
}

