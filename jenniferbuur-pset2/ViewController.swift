//
//  ViewController.swift
//  jenniferbuur-pset2
//
//  Created by Jennifer Buur on 19-02-17.
//  Copyright © 2017 Jennifer Buur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textView: UIView!
    @IBOutlet var photoView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillLayoutSubviews() {
        // app is in landscape view
        if self.view.bounds.width > self.view.bounds.height {
            // switches
            self.textView.frame.size.width = 0.5 * self.view.bounds.width
            self.textView.frame.origin.x = 0.5 * self.view.bounds.width
            self.textView.frame.origin.y = 0
            self.textView.frame.size.height = self.view.bounds.height
            // image
            self.photoView.frame.origin.x = 0
            self.photoView.frame.origin.y = 64
            self.photoView.frame.size.width = 0.5 * self.view.bounds.width
            self.photoView.frame.size.height = self.view.bounds.height - 64
        }
            
            
            // app is in portret view
        else {
            // switches
            self.textView.frame.size.height = 0.5 * self.view.bounds.height
            self.textView.frame.origin.x = 0
            self.textView.frame.origin.y = 0.5 * self.view.bounds.height
            self.textView.frame.size.width = self.view.bounds.width
            // image
            self.photoView.frame.origin.x = 0
            self.photoView.frame.origin.y = 44
            self.photoView.frame.size.height = 0.5 * self.view.bounds.height - 44
            self.photoView.frame.size.width = self.view.bounds.width
        }
    }
}

