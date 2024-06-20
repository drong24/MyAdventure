//
//  Node.swift
//  MyAdventure
//
//  Created by Daisy Rong on 6/19/24.
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
    
    func getChoice() -> Choice {
        return self.value
    }
    
    func moveLeft() -> Node<Choice> {
        return self.left!
    }
    
    func moveRight() -> Node<Choice> {
        return self.right!
    }
    
    func setLeft(node: Node<Choice>) {
        self.left = node
    }
    
    func setRight(node: Node<Choice>) {
        self.right = node
    }
    
}
