//
//  StoryLogic.swift
//  MyAdventure
//
//  Created by Daisy Rong on 6/18/24.
//

import Foundation

    let choices = [
        Node(Choice("You find yourself in a valley surrounded by green hills and wildflowers of all shapes and colors. As you walk through the valley, you hear a distant melody. Following the sound, you see a small sheep standing on a hill, singing a beautiful song.", "Approach the singing sheep", "Observe from a distance"), leaf: false),
        Node(Choice("You decide to approach the singing sheep, drawn in by its melody. As you get closer, the sheep suddenly notices you. Startled, it stops singing and looks at you with wide eyes. Before you can say anything, the sheep bolts away into the forest nearby.", "Follow the sheep", "Start singing"), leaf: false),
        Node(Choice("You watch the sheep from afar, captivated by its singing. As you gradually return to awareness, you find that the sheep has vanished from sound and sight, leaving you alone in the vast expanse of nature.", "Search the area", "Continue your journey"), leaf: false),
        Node(Choice("You decide to follow the sheep into the forest. Pushing through the dense foliage, you catch glimpses of the sheep moving farther and farther away. Despite your best efforts, you struggle to keep up with its pace. After a while, you lose sight of the sheep entirely."), leaf: true),
        Node(Choice("You begin to sing a familar melody. The sheep cautiously peeks out from the bush, listening. After a while, it steps out from its hiding place and approaches you. Congratulations! You now have a new traveling companion!"), leaf: true),
        Node(Choice("You decide to search the area where you last saw the sheep. After a while, you find a small patch of white wool caught on a low branch of a tree. You pick up the wool and place it in your pack."), leaf: true),
        Node(Choice("You decide to continue on your journey, reflecting on this odd encounter."), leaf: true)
    ]
    
    func addNodes() {
        let count = 1 ... choices.count
        for i in count {
            if (i < (choices.count + 1) / 2) {
                choices[i - 1].setLeft(node: choices[i * 2 - 1])
                choices[i - 1].setRight(node: choices[i * 2])
                print(choices[i - 1].left?.value.text ?? "none")
                print(choices[i - 1].right?.value.text ?? "none")
            }
        }
    }
    func getRoot() -> Node<Choice> {
        print("GET ROOT" + (choices[0].left?.value.text ?? "None"))
        print("GET ROOT" + (choices[0].right?.value.text ?? "None"))
        return choices[0]
    }

    
