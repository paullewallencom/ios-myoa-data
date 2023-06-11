//
//  Credits.swift
//  MYOA-Data
//
//  Created by Apple Computer on 6/11/23.
//

import Foundation

// MARK: - Credits

struct Credits {
    
    // MARK: Properties
    
    var key: String?
    var title: String?
    var author: String?
    var source: String?
    var imageName: String?
    
    // MARK: Initializer
    
    init(dictionary: [String : String]) {
        key = dictionary["key"] as String?
        title = dictionary["title"] as String?
        author = dictionary["author"] as String?
        source = dictionary["source"] as String?
        imageName = dictionary["image"] as String?
    }
}
