//
//  ViewController.swift
//  AnimationsApp
//
//  Created by Илья Сесюнин on 04.08.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var animationView: SpringView!
    @IBOutlet var animationLabel: UILabel! {
        didSet {
            animationLabel.text = animation.description
        }
    }
    
    // MARK: - Private propeties
    private var animation = Animation.getRandomAnimation()
    
    // MARK: - IB Actions
    @IBAction func animationButtonPressed(_ sender: UIButton) {
        animationLabel.text = animation.description
        
        animationView.animation = animation.name
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.delay = animation.delay
        animationView.curve = animation.curve
        animationView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
    }
}

