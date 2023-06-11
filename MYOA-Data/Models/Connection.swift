//
//  Connection.swift
//  MYOA-Data
//
//  Created by Apple Computer on 6/11/23.
//

import Foundation

// MARK: - Connection

struct Connection {
    
    // MARK: Properties
    
    var prompt: String
    var connectedStoryNodeName: String
    
    // MARK: Initializer
    
    init(dictionary: [String : String]) {
        prompt = dictionary["prompt"]!
        connectedStoryNodeName = dictionary["connectTo"]!
    }
}
