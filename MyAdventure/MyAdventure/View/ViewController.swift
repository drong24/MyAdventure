//
//  ViewController.swift
//  MyAdventure
//
//  Created by Daisy Rong on 6/18/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MainText: UILabel!
    @IBOutlet weak var ButtonOneText: UIButton!
    @IBOutlet weak var ButtonTwoText: UIButton!
    
    var storylogic = StoryLogic()
    var currentChoice = Node(Choice("placeholder"), leaf: false)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Initializes choice tree
        storylogic.addChildNodes()
        // Set root node
        currentChoice = storylogic.getRoot()
        
        // displays root node text and options on screen
        MainText.text = currentChoice.value.text
        ButtonOneText.setTitle(currentChoice.value.option_one, for: .normal)
        ButtonTwoText.setTitle(currentChoice.value.option_two, for: .normal)
    }

    @IBAction func chooseChoice(_ sender: UIButton) {
        currentChoice = (sender.titleLabel?.text == currentChoice.getChoice().getOptionOne()) ? currentChoice.left! : currentChoice.right!
        
        if (currentChoice.leaf == false) {
            MainText.text = currentChoice.getChoice().getText()
            ButtonOneText.setTitle(currentChoice.getChoice().getOptionOne(), for: .normal)
            ButtonTwoText.setTitle(currentChoice.getChoice().getOptionTwo(), for: .normal)
        }
        else {
            MainText.text = currentChoice.getChoice().getText()
            ButtonOneText.setTitle("end", for: .normal)
            ButtonOneText.isEnabled = false
            ButtonTwoText.setTitle("end", for: .normal)
            ButtonTwoText.isEnabled = false
        }

    }
}

