//
//  ThridViewController.swift
//  jenniferbuur-pset2
//
//  Created by Jennifer Buur on 21-02-17.
//  Copyright © 2017 Jennifer Buur. All rights reserved.
//

import UIKit

class ThridViewController: UIViewController {

    var story: String?
    
    @IBOutlet var storyView: UIView!
    @IBOutlet var textView: UITextView!
    @IBAction func nextStoryButton(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.text = story

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillLayoutSubviews() {
        // app is in landscape view
        if self.view.bounds.width > self.view.bounds.height {
            // switches
            self.storyView.frame.size.width = 0.5 * self.view.bounds.width
            self.storyView.frame.origin.x = 0.25 * self.view.bounds.width
            self.storyView.frame.origin.y = 0
            self.storyView.frame.size.height = self.view.bounds.height
        }
            // app is in portret view
        else {
            // image
            self.storyView.frame.origin.x = 0
            self.storyView.frame.origin.y = 44
            self.storyView.frame.size.height = 0.5 * self.view.bounds.height - 44
            self.storyView.frame.size.width = self.view.bounds.width
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
