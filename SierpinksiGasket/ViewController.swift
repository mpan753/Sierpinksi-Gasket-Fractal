//
//  ViewController.swift
//  SierpinksiGasket
//
//  Created by Mia on 8/10/16.
//  Copyright © 2016 Mia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var sierpinksiGasketView: SierpinksiGasketView!
    
    @IBOutlet var slider: UISlider!
    @IBOutlet var levelLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        levelLabel.text = String(sierpinksiGasketView.n)
        slider.value = Float(sierpinksiGasketView.n)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func sliderValueChanged(slider: UISlider) {
        let roundValue = Int(0.5 + slider.value)
        slider.value = Float(roundValue)
        levelLabel.text = String(Int(slider.value))
        sierpinksiGasketView.n = roundValue
        sierpinksiGasketView.setNeedsDisplay()
    }
    
    
    
    

}

