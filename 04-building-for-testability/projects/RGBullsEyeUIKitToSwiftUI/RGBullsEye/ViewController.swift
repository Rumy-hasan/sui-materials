//
//  ViewController.swift
//  RGBullsEye
//
//  Created by Paradox Space Rumy M1 on 25/8/21.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBSegueAction func openRGBullsEye(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: ContentView())
    }
    

}

