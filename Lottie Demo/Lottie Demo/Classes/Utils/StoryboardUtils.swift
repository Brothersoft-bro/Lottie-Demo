//
//  StoryboardUtils.swift
//  Lottie Demo
//
//  Created by Norbert Korosi on 30/01/2021.
//  Copyright © 2021 BrotherSoft. All rights reserved.
//

import UIKit

class StoryboardUtils {
    
    private static let mainStoryboard = UIStoryboard(name: Constants.StoryboardIdentifier.main, bundle: nil)
    
    static func makeAnimationViewController(title: String?, animationName: String) -> AnimationViewController {
        let vc =  mainStoryboard.instantiateViewController(identifier: Constants.ViewControllerIdentifier.animation) as! AnimationViewController
        vc.title = title
        vc.animationName = animationName
        
        return vc
    }
}
