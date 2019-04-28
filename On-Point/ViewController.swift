//
//  ViewController.swift
//  On-Point
//
//  Created by Raj Kadiyala on 4/27/19.
//  Copyright © 2019 Mirchi Co. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue = 0
    var targetValue = 0
    var totalScore = 0
    var roundNumber = 1
    
    @IBOutlet weak var pointLabel: UILabel!
    @IBOutlet weak var sliderValueOutlet: UISlider!
    
    @IBOutlet weak var roundLabel: UILabel!
    @IBOutlet weak var ScoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue = Int(round(sliderValueOutlet.value))
        startNewRound()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sliderMovedValue(_ sliderValueOutlet: UISlider) {
        currentValue = Int(round(sliderValueOutlet.value))
    }
    
    @IBAction func hitMeButtonClicked(_ sender: Any) {
        
        let difference = abs(targetValue - currentValue)
        let points = 100 - difference
        
        totalScore += points
        
        let message = "You scored \(points) points!"
        
        let alert  = UIAlertController(title: "Hello, World!", message: message , preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK!", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        startNewRound()
        
        roundNumber += 1
    }
    
    func startNewRound(){
        
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        sliderValueOutlet.value = Float(currentValue)
        updateLabels()
    }
    
    func updateLabels() {
        ScoreLabel.text = "\(targetValue)"
        pointLabel.text = "\(totalScore)"
        roundLabel.text = "\(roundNumber)"
    }

}

