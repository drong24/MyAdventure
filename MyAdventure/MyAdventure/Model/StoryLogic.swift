//
//  StoryLogic.swift
//  MyAdventure
//
//  Created by Daisy Rong on 6/18/24.
//

import Foundation

class Node<Choice> {
    var value: Choice
    var left: Node?
    var right: Node?
    
    init(_ value: Choice, left: Node? = nil, right: Node? = nil) {
        self.value = value
        self.left = left
        self.right = right
    }
}

let choices = [
    Node(Choice("Mint Choco?", "yes", "no")),
    Node(Choice("Pineapple on pizza?", "yesss", "noooo")),
    Node(Choice("Hmmm, pineapple on pizza?", "yesss", "noooo")),
    Node(Choice("Your taste is amazing!")),
    Node(Choice("Your taste is alright")),
    Node(Choice("Your taste is alright...")),
    Node(Choice("You should improve your taste..."))
]

func addNodes() {
    let count = 1 ... choices.count
    for i in count {
        if (i < (choices.count + 1) / 2) {
            choices[i - 1].left = choices[i * 2 - 1]
            choices[i - 1].right = choices[i * 2]
        }
    }
}

