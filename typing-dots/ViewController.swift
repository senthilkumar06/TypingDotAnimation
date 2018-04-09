//
//  ViewController.swift
//  typing-dots
//
//  Created by senthil-zt121 on 09/04/18.
//  Copyright © 2018 senthil-zt121. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dotsHolder : UIView!
    @IBOutlet weak var dot1 : UIView!
    @IBOutlet weak var dot2 : UIView!
    @IBOutlet weak var dot3 : UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        Animate the first dot after 0s delay
        UIView.animate(withDuration: 0.5, delay: 0, options: [.repeat, .autoreverse], animations: {
            self.dot1.transform = CGAffineTransform(translationX: 0, y: -20)
        }, completion: { (bool) in })
        
//        Animate the second dot after 0.2s delay
        UIView.animate(withDuration: 0.5, delay: 0.20, options: [.repeat, .autoreverse], animations: {
            self.dot2.transform = CGAffineTransform(translationX: 0, y: -20)
        }, completion: { (bool) in })
        
//        Animate the third dot after 0.4s delay
        UIView.animate(withDuration: 0.5, delay: 0.40, options: [.repeat, .autoreverse], animations: {
            self.dot3.transform = CGAffineTransform(translationX: 0, y: -20)
        }, completion: { (bool) in })
        
        
//        Remove the Typing information after 5 seconds
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.removeAnimations()
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func removeAnimations() -> Void {
//        Remove all animations from the dots
        dot1.layer.removeAllAnimations()
        dot2.layer.removeAllAnimations()
        dot3.layer.removeAllAnimations()
        
//        Hide the holder view
        dotsHolder.isHidden = true
    }
}

