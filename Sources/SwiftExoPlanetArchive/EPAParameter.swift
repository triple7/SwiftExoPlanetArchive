//
//  EPAParameter.swift
//  SwiftExoPlanetArchive
//
//  Created by Yuma decaux on 1/1/2025.
//

import Foundation

public struct EPAParameter:Codable {
    let variable:String
    let operation:EPAOperator
    let value:String
    var postOperator:EPAOperator?

    
    public init(variable: String, operation: EPAOperator, value: String) {
        self.variable = variable
        self.operation = operation
        self.value = value
    }

    public init() {
        self.variable = ""
        self.operation = .all
        self.value = ""
    }
    
    public mutating func setPostOperator(postOperator: EPAOperator) {
        self.postOperator = postOperator
    }
    
    
    public func getPredicate() -> String {
        var output = "\(variable)+\(operation.id)"
        output = operation == .like ? "\(output)+'\(value)'" : "\(output)+\(value)"
        return postOperator == nil ? output : "\(output)+\(postOperator!)"
    }
    
}


