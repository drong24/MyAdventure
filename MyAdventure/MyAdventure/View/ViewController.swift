//
//  ViewController.swift
//  MyAdventure
//
//  Created by Daisy Rong on 6/18/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addNodes()
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


}

