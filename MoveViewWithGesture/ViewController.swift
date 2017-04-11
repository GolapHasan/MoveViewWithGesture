//
//  ViewController.swift
//  MoveViewWithGesture
//
//  Created by Md. Kamrul Hasan on 4/11/17.
//  Copyright © 2017 MKHG Lab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let gesture = UIPanGestureRecognizer(target: self, action: #selector(wasDragged(gestureRecognizer:)))
        myView.addGestureRecognizer(gesture)
        myView.isUserInteractionEnabled = true
//        gesture.delegate = self
    }
    
    func wasDragged(gestureRecognizer: UIPanGestureRecognizer) {
        if gestureRecognizer.state == UIGestureRecognizerState.began || gestureRecognizer.state == UIGestureRecognizerState.changed {
            let translation = gestureRecognizer.translation(in: self.view)
            print(gestureRecognizer.view!.center.y)
//            if(gestureRecognizer.view!.center.y < 555) {
                gestureRecognizer.view!.center = CGPoint(x: gestureRecognizer.view!.center.x + translation.x, y: gestureRecognizer.view!.center.y + translation.y)
//            }else {
//                gestureRecognizer.view!.center = CGPoint(x: gestureRecognizer.view!.center.x, y: 554)
//            }
            
            gestureRecognizer.setTranslation(CGPoint(x: 0, y: 0), in: self.view)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

