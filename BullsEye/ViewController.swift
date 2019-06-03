//
//  ViewController.swift
//  BullsEye
//
//  Created by Евгений Латышев on 5/29/19.
//  Copyright © 2019 Evgeny Latyshev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var slider: UISlider!
  @IBOutlet weak var targetLabel: UILabel!
  var currentValue: Int = 0
  var targetValue = 0

  override func viewDidLoad() {
    super.viewDidLoad()
    startNewRound()
  }
    
  @IBAction func showAlert() {
    let message = "The value of the slider is \(currentValue)" + "\nThe target value is: \(targetValue)"
    let alert = UIAlertController(title: "Hello, World!", message: message, preferredStyle: .alert)
    let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
    alert.addAction(action)
    present(alert, animated: true, completion: nil)
    startNewRound()
  }
    
  @IBAction func sliderMoved(_ slider: UISlider) {
    currentValue = lroundf(slider.value)
  }
  
  func startNewRound() {
    targetValue = Int.random(in: 1...100)
    currentValue = 50
    slider.value = Float(currentValue)
    updateLabels()
  }
  
  func updateLabels() {
    targetLabel.text = String(targetValue)
  }
}

