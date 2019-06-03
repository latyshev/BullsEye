//
//  ViewController.swift
//  BullsEye
//
//  Created by Евгений Латышев on 5/29/19.
//  Copyright © 2019 Evgeny Latyshev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  var currentValue: Int = 0

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
    
  @IBAction func showAlert() {
    let message = "The value of the slider is \(currentValue)"
    let alert = UIAlertController(title: "Hello, World!", message: message, preferredStyle: .alert)
    let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
    alert.addAction(action)
    present(alert, animated: true, completion: nil)
  }
    
  @IBAction func sliderMoved(_ slider: UISlider) {
    currentValue = lroundf(slider.value)
  }
}

