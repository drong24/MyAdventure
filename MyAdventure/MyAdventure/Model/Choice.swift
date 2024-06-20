//
//  Choice.swift
//  MyAdventure
//
//  Created by Daisy Rong on 6/18/24.
//

import Foundation

struct Choice {
    var text: String
    var option_one: String?
    var option_two: String?
    
    init(_ t: String, _ op_one: String? = nil, _ op_two: String? = nil) {
        text = t
        option_one = op_one
        option_two = op_two
    }
    
    func getText() -> String {
        return text
    }
    
    func getOptionOne() -> String {
        return self.option_one ?? "end"
    }
    
    func getOptionTwo() -> String {
        return self.option_two ?? "end"
    }
}

