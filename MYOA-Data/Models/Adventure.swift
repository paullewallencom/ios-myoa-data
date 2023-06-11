//
//  Adventure.swift
//  MYOA-Data
//
//  Created by Apple Computer on 6/11/23.
//

import Foundation

// MARK: - Adventure

class Adventure {
    
    // MARK: Properties
    
    var credits: Credits;
    var startNode: StoryNode!
    var storyNodes: [String : StoryNode]
    
    // MARK: Initializer
    
    init(dictionary: [String : AnyObject]) {
        
        // Get the two dictionaries
        let creditsDictionary = dictionary["credits"] as! [String : String]
        let storyNodesDictionary = dictionary["nodes"] as! [String : AnyObject]
        
        // Create the credits
        credits = Credits(dictionary: creditsDictionary)
        
        // Create the nodes array
        storyNodes = [String : StoryNode]()
        
        // Add a Story Node for each item in storyNodesDictionary
        for (key, dictionary) in storyNodesDictionary {
            storyNodes[key] = StoryNode(dictionary: dictionary as! [String : AnyObject], adventure: self)
        }
        
        // Set the first node
        let startNodeKey = dictionary["startNodeKey"]as! String
        startNode = storyNodes[startNodeKey]!
    }
}
