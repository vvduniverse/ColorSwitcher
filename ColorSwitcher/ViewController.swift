//
//  ViewController.swift
//  ColorSwitcher
//
//  Created by Vahtee Boo on 09.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var viewShow: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    //    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewShow.layer.cornerRadius = 15
        
    }
    
    @IBAction func rgbSlider(_ sender: UISlider) {
        colorSet()
        switch sender {
        case redSlider: redLabel.text = string(from: redSlider)
        case greenSlider: greenLabel.text = string(from: greenSlider)
        default: blueLabel.text = string(from: blueSlider)
        }
        //    @IBAction func rgbSlider(_ sender: UISlider) {
        //    }
        
        
        //    @IBAction func rbgSliders(_ sender: UISlider) {
        //
        //        colorSet()
        //        switch sender {
        //        case redSlider: redLabel.text = string(from: redSlider)
        //        case greenSlider: greenLabel.text = string(from: greenSlider)
        //        default: blueLabel.text = string(from: blueSlider)
        //        }
        //    }
        //    @IBAction func redSliderAct(_ sender: UISlider) {
        ////        redLabel.text = string(from: redSlider)
        //    }
        //
        ////    @IBAction func greenSliderAct() {
        ////        greenLabel.text = string(from: greenSlider)
        ////        colorSet()
        ////    }
        ////
        ////    @IBAction func blueSliderAct() {
        ////        blueLabel.text = string(from: blueSlider)
        ////        colorSet()
        ////    }
        
        func colorSet() {
            viewShow.backgroundColor = UIColor(
                red: CGFloat(redSlider.value),
                green: CGFloat(greenSlider.value),
                blue: CGFloat(blueSlider.value),
                alpha: 1
            )
        }
        
        // Значения RGB
        func string(from slider: UISlider) -> String {
            String(format: "%.2f", slider.value)
        }
        
    }
    
    
}
