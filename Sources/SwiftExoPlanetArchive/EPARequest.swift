//
//  EPARequest.swift
//  SwiftExoPlanetArchive
//
//  Created by Yuma decaux on 27/12/2024.
//

import Foundation


public struct EPARequest {
    /** Exoplanet ARchive request formatter
     Creates a request Url from the API and configured parameters, with TAP sql like queries
     */
private let APIUrl = "https://exoplanetarchive.ipac.caltech.edu/TAP/sync"
    private let table:EPATable
    private let fields:[String]
    private(set) var parameters:[EPAParameter]
    private let format:EPAFormat
    
    public init(table: EPATable, fields: [String], parameters: [EPAParameter], format: EPAFormat = .json) {
        self.table = table
        self.fields = fields
        self.parameters = parameters
        self.format = format
    }
    
    
    public func getSelectQuery() -> String {
        let selectFields = fields.joined(separator: ",")
        let conditions = parameters.map{$0.getPredicate()}.joined(separator: " ")
        return "select+\(selectFields)+from+\(table)+where+\(conditions)".replacingOccurrences(of: " ", with: "+")
        }
    
    
    public func getUrl() -> URL {
        var url = URLComponents(string: APIUrl)
        url!.queryItems = [URLQueryItem(name: "query", value: self.getSelectQuery())] + [URLQueryItem(name: "format", value: self.format.id)]
        return url!.url!
    }

}

