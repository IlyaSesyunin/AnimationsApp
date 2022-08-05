//
//  ViewController.swift
//  AnimationsApp
//
//  Created by Илья Сесюнин on 04.08.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    @IBOutlet var springAnimationView: SpringView!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    @IBOutlet var startButton: SpringButton!
    
    private var randomAnimation = AnimationPreset.allCases.randomElement()!.rawValue
    private var randomCurve = AnimationCurve.allCases.randomElement()!.rawValue
    private var randomForce = CGFloat.random(in: 0...2)
    private var randomDuration = CGFloat.random(in: 0...2)
    private var randomDelay = CGFloat.random(in: 0...2)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabels()
    }

    @IBAction func startSpringAnimation(_ sender: SpringButton) {
        setupAnimation()
        setupNextRandomAnimation()
    }
    
    private func setupAnimation() {
        springAnimationView.animation = randomAnimation
        springAnimationView.curve = randomCurve
        springAnimationView.force = randomForce
        springAnimationView.duration = randomDuration
        springAnimationView.delay = randomDelay
        springAnimationView.animate()
        
        setupLabels()
    }
    
    private func setupNextRandomAnimation() {
        randomAnimation = AnimationPreset.allCases.randomElement()!.rawValue
        randomCurve = AnimationCurve.allCases.randomElement()!.rawValue
        randomForce = CGFloat.random(in: 0...2)
        randomDuration = CGFloat.random(in: 0...2)
        randomDelay = CGFloat.random(in: 0...2)
        
        startButton.setTitle("Run \(randomAnimation)", for: .normal)
    }
    
    private func setupLabels() {
        presetLabel.text = "Preset: \(randomAnimation)"
        curveLabel.text = "Curve: \(randomCurve)"
        forceLabel.text = "Force: " + String(format: "%0.2f", randomForce)
        durationLabel.text = "Duration: " + String(format: "%0.2f", randomDuration)
        delayLabel.text = "Duration: " + String(format: "%0.2f", randomDelay)
    }
}

