//
//  Choice.swift
//  MyAdventure
//
//  Created by Daisy Rong on 6/18/24.
//

import Foundation

struct Choice {
    init(_ t: String, _ op_one: String? = nil, _ op_two: String? = nil) {
        text = t
        option_one = op_one
        option_two = op_two
    }
    var text: String
    var option_one: String?
    var option_two: String?
}

