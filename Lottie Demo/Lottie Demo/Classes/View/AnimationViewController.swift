//
//  AnimationViewController.swift
//  Lottie Demo
//
//  Created by Norbert Korosi on 30/01/2021.
//  Copyright © 2021 BrotherSoft. All rights reserved.
//

import UIKit
import Lottie

class AnimationViewController: UIViewController {

    @IBOutlet weak var animationView: AnimationView!
    var animationName: String?
    
    //MARK: - Lifecycle methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationView.loopMode = .loop
        animationView.animation = Animation.named(animationName ?? "")
        animationView.play()
    }
    
    //MARK: - UI & Action methods

    @IBAction func playButtonTapped(_ sender: UIButton) {
        if !animationView.isAnimationPlaying {
            animationView.play()
        }
    }

    @IBAction func pauseButtonTapped(_ sender: UIButton) {
        animationView.pause()
    }
    
    @IBAction func stopButtonTapped(_ sender: Any) {
        animationView.stop()
    }
}
