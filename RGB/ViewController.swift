//
//  ViewController.swift
//  RGB
//
//  Created by Marco Grier on 4/20/17.
//  Copyright © 2017 mlgrier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greyLabel: UILabel!
    @IBOutlet weak var greySlider: UISlider!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greyAction(greySlider)
        
    }

    @IBAction func greyAction(_ sender: UISlider) {
        
        view.backgroundColor = UIColor(white: CGFloat(sender.value), alpha: 1)
        
        greyLabel.text = String(format: "%.2f", sender.value)
    }

    @IBAction func rgbAction(_ sender: UISlider) {
        
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        
    }

    @IBAction func reset() {
    }
}

