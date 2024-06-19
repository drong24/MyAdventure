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
    
    var currentChoice = choices[0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // initializes choice tree
        addNodes()
        // displays root node text on screen
        MainText.text = currentChoice.value.text
        ButtonOneText.setTitle(currentChoice.value.option_one, for: .normal)
        ButtonTwoText.setTitle(currentChoice.value.option_two, for: .normal)
        /*
        var count = 0 ... choices.count - 1
        for i in count {
            print(choices[i].value.text)
            print(choices[i].value.option_one ?? "end")
            print(choices[i].value.option_two ?? "end")
            print(choices[i].left?.value ?? "end")
            print(choices[i].right?.value ?? "end")
            print("\n")
        }
         */
    }

    @IBAction func chooseChoice(_ sender: UIButton) {
        currentChoice = (sender.titleLabel?.text == currentChoice.value.option_one) ? currentChoice.left! : currentChoice.right!
        
        if (currentChoice.leaf == false) {
            MainText.text = currentChoice.value.text
            ButtonOneText.setTitle(currentChoice.value.option_one, for: .normal)
            ButtonTwoText.setTitle(currentChoice.value.option_two, for: .normal)
        }
        else {
            MainText.text = currentChoice.value.text
            ButtonOneText.setTitle("end", for: .normal)
            ButtonOneText.isEnabled = false
            ButtonTwoText.setTitle("end", for: .normal)
            ButtonTwoText.isEnabled = false
        }

    }
}

