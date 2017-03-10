//
//  Person.swift
//  Pair
//
//  Created by Chance Robertson on 3/10/17.
//  Copyright © 2017 Chance Robertson. All rights reserved.
//

import Foundation

class Person: Equatable {
    
    fileprivate static let kName = "name"
    
    var dictionaryRep: [String:Any]{
        return [Person.kName : name]
    }
    
    var name: String
    
    init(name: String){
        self.name = name
    }
    
    convenience init?(dictionary: [String:Any]) {
        guard let name = dictionary[Person.kName] as? String else { return nil }
        self.init(name: name)
    }
}

func ==(lhs: Person, rhs: Person) -> Bool {
    return lhs.name == rhs.name
}
