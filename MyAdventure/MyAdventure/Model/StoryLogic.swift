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
    var leaf: Bool
    
    init(_ value: Choice, left: Node? = nil, right: Node? = nil, leaf: Bool) {
        self.value = value
        self.left = left
        self.right = right
        self.leaf = leaf
    }
}

let choices = [
    Node(Choice("Mint Choco?", "yes", "no"), leaf: false),
    Node(Choice("Pineapple on pizza?", "yesss", "noooo"), leaf: false),
    Node(Choice("Hmmm, pineapple on pizza?", "yesss", "noooo"), leaf: false),
    Node(Choice("Your taste is amazing!"), leaf: true),
    Node(Choice("Your taste is alright"), leaf: true),
    Node(Choice("Your taste is alright..."), leaf: true),
    Node(Choice("You should improve your taste..."), leaf: true)
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

