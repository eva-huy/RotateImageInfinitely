//
//  ViewController.swift
//  rotateImageView
//
//  Created by Nguyen Quang Huy on 3/14/16.
//  Copyright © 2016 Nguyen Quang Huy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func rotate360Degrees(duration: CFTimeInterval = 1.0, completionDelegate: AnyObject? = nil) {
        let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation")
        rotateAnimation.fromValue = 0.0
        rotateAnimation.toValue = CGFloat(M_PI * 2.0)
        rotateAnimation.duration = duration
        rotateAnimation.repeatCount = .infinity
        rotateAnimation.removedOnCompletion = false
        
        if let delegate: AnyObject = completionDelegate {
            rotateAnimation.delegate = delegate
        }
        self.imageView.layer.addAnimation(rotateAnimation, forKey: nil)
    }

    @IBAction func tapRotateButton(sender: AnyObject) {
        
        self.rotate360Degrees()
        
//        let fullRotation = CGFloat(M_PI * 2)
//        
//        let duration = 1.0
//        let delay = 0.0
//        let options = UIViewKeyframeAnimationOptions.Repeat
//        
//        UIView.animateKeyframesWithDuration(duration, delay: delay, options: options, animations: {
//            // each keyframe needs to be added here
//            // within each keyframe the relativeStartTime and relativeDuration need to be values between 0.0 and 1.0
//            
//            UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 1/3, animations: {
//                // start at 0.00s (5s × 0)
//                // duration 1.67s (5s × 1/3)
//                // end at   1.67s (0.00s + 1.67s)
//                self.imageView.transform = CGAffineTransformMakeRotation(1/3 * fullRotation)
//            })
//            UIView.addKeyframeWithRelativeStartTime(1/3, relativeDuration: 1/3, animations: {
//                self.imageView.transform = CGAffineTransformMakeRotation(2/3 * fullRotation)
//            })
//            UIView.addKeyframeWithRelativeStartTime(2/3, relativeDuration: 1/3, animations: {
//                self.imageView.transform = CGAffineTransformMakeRotation(3/3 * fullRotation)
//            })
//            
//            }, completion: {finished in
//                // any code entered here will be applied
//                // once the animation has completed
//                
//        })
        
    }

}

