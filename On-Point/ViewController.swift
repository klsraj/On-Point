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
    var roundNumber = 0
    
    @IBOutlet weak var pointLabel: UILabel!
    @IBOutlet weak var sliderValueOutlet: UISlider!
    
    @IBOutlet weak var roundLabel: UILabel!
    @IBOutlet weak var ScoreLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        currentValue = Int(round(sliderValueOutlet.value))
        startNewRound()
        
        let thumbImageNormal = #imageLiteral(resourceName: "SliderThumb-Normal")
        let thumbImageHighlighted = #imageLiteral(resourceName: "SliderThumb-Highlighted")
        
        let insets = UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 14)
        let trackLeftImage = #imageLiteral(resourceName: "SliderTrackLeft")
        let trackLeftResizable = trackLeftImage.resizableImage(withCapInsets: insets)
        let trackRightImage = #imageLiteral(resourceName: "SliderTrackRight")
        let trackRightResizable = trackRightImage.resizableImage(withCapInsets: insets)
        
        sliderValueOutlet.setThumbImage(thumbImageNormal, for: .normal)
        sliderValueOutlet.setThumbImage(thumbImageHighlighted, for: .highlighted)
        sliderValueOutlet.setMinimumTrackImage(trackLeftResizable, for: .normal)
        sliderValueOutlet.setMaximumTrackImage(trackRightResizable, for: .normal)
    }
    
    @IBAction func sliderMovedValue(_ sliderValueOutlet: UISlider)
    {
        currentValue = Int(round(sliderValueOutlet.value))
    }
    
    @IBAction func startOverButtonClicked(_ sender: Any) {
        roundNumber = 0
        totalScore = 0
        startNewRound()
    }
    
    
    
    @IBAction func hitMeButtonClicked(_ sender: Any)
    {
        
        let difference = abs(targetValue - currentValue)
        var points = 100 - difference
        
        let title: String
        
        if difference == 0
        {
            title = "Perfect!"
            points += 100
        }
        else if difference < 5 {
            title = "You almost had it!"
            if difference == 1 {
                points += 50
            }
        }
        else if difference < 10
        {
            title = "Pretty good!"
        }
        else
        {
            title = "Not even close...!"
        }
        
        totalScore += points
        
        let message = "You scored \(points) points!"
        
        let alert  = UIAlertController(title: title, message: message , preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK!", style: .default, handler: {action in self.startNewRound()})
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    func startNewRound()
    {
        roundNumber += 1
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        sliderValueOutlet.value = Float(currentValue)
        updateLabels()
    }
    
    func updateLabels()
    {
        ScoreLabel.text = "\(targetValue)"
        pointLabel.text = "\(totalScore)"
        roundLabel.text = "\(roundNumber)"
    }

}

