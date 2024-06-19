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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addNodes()
        MainText.text = choices[0].value.text
        ButtonOneText.setTitle(choices[0].value.option_one, for: .normal)
        ButtonTwoText.setTitle(choices[0].value.option_two, for: .normal)
        
        var count = 0 ... choices.count - 1
        for i in count {
            print(choices[i].value.text)
            print(choices[i].value.option_one ?? "end")
            print(choices[i].value.option_two ?? "end")
            print(choices[i].left?.value ?? "end")
            print(choices[i].right?.value ?? "end")
            print("\n")
        }
    }

    @IBAction func Options(_ sender: Any) {
    }
}

