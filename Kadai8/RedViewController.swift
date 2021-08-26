//
//  ViewController.swift
//  Kadai8
//
//  Created by 吉田晃崇 on 2021/08/16.
//

import UIKit

class RedViewController: UIViewController {
   
    @IBOutlet private weak var valueLabel: UILabel!
    @IBOutlet private weak var sliderValue: UISlider!
    let delegate = UIApplication.shared.delegate as! AppDelegate
   
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        sliderValue.value = delegate.sharedValue
        valueLabel.text = String(delegate.sharedValue)
    }

    @IBAction func slider(_ sender: Any) {
        let num1 = sliderValue.value
        valueLabel.text = String(num1)
        delegate.sharedValue = sliderValue.value
    }    
}

