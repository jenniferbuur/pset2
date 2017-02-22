//
//  ThirdViewController.swift
//  jenniferbuur-pset2
//
//  Created by Jennifer Buur on 19-02-17.
//  Copyright © 2017 Jennifer Buur. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var text: Story = Story(stream: "string")
    
    @IBOutlet var wordView: UIView!
    @IBOutlet var placeholder: UILabel!
    @IBOutlet var storyButton: UIButton!
    @IBOutlet var remainingWords: UILabel!
    @IBOutlet var enteredWord: UITextField!
    @IBOutlet var showStory: UIButton!
    @IBAction func submitButton(_ sender: Any) {

        let word = enteredWord.text
        
        if word != nil {
            text.fillInPlaceholder(word: word!)
        }
        
        placeholder.text = "please type a/an " + text.getNextPlaceholder()
        remainingWords.text = "\(text.getPlaceholderRemainingCount()) word(s) left"
        enteredWord.text = text.getNextPlaceholder()
        if text.getPlaceholderRemainingCount() == 0 {
            storyButton.isHidden = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        storyButton.isHidden = true
        
        let stories = ["madlib0_simple", "madlib1_tarzan", "madlib2_university", "madlib3_clothes", "madlib4_dance"]
        let randomNum = Int(arc4random_uniform(UInt32(stories.count)))
        let file = stories[randomNum]
        guard let content = try? String(contentsOfFile: Bundle.main.path(forResource: "\(file)", ofType: "txt")!) else {
            return
        }
        text = Story(stream: content)
        placeholder.text = "please type a/an " + text.getNextPlaceholder()
        remainingWords.text = "\(text.getPlaceholderRemainingCount()) word(s) left"
        enteredWord.text = text.getNextPlaceholder()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let thirdViewController = segue.destination as! ThridViewController
        
        thirdViewController.story = text.toString()
    }
    
    override func viewWillLayoutSubviews() {
        // app is in landscape view
        if self.view.bounds.width > self.view.bounds.height {
            // switches
            self.wordView.frame.size.width = 0.5 * self.view.bounds.width
            self.wordView.frame.origin.x = 0.25 * self.view.bounds.width
            self.wordView.frame.origin.y = 0
            self.wordView.frame.size.height = self.view.bounds.height
        }
            // app is in portret view
        else {
            // image
            self.wordView.frame.origin.x = 0
            self.wordView.frame.origin.y = 44
            self.wordView.frame.size.height = 0.5 * self.view.bounds.height - 44
            self.wordView.frame.size.width = self.view.bounds.width
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
