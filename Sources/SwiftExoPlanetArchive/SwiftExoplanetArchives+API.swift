//
//  Untitled.swift
//  SwiftExoPlanetArchive
//
//  Created by Yuma decaux on 20/4/2025.
//

extension SwiftExoPlanetArchive {

    public func getTableProperties(from table: EPATable) async throws -> EPAResponse {
        let selectQuery = "SELECT * FROM TAP_SCHEMA.columns WHERE table_name = '\(table.id)'"
        return try await queryEPA(selectQuery: selectQuery, table: table, fields: [], parameters: [], format: .json)
    }

    
    public func getHostPlanets(from host: String) async throws -> [PsResponse] {
        let selectQuery = "SELECT *  FROM ps WHERE hostname = '\(host)'"
        let response = try await queryEPA(selectQuery: selectQuery, table: .ps, fields: [], parameters: [], format: .json)
        return response.psResponse!
    }

    
    public func getPlanetSpectra(from planets: [String]) async throws -> [SpectraResponse] {
        let planetStrings = planets.map { "'\($0)'" }.joined(separator: ",")
            let spectralQuery = "SELECT * FROM spectra WHERE pl_name in (\(planetStrings))"
            let response = try await queryEPA(selectQuery: spectralQuery, table: .spectra, fields: [], parameters: [], format: .json)
        return response.spectraResponse!
    }

    
    public func getPlanetPSComp(from planets: [String]) async throws -> [PscompparsResponse] {
        let planetStrings = planets.map { "'\($0)'" }.joined(separator: ",")
        let psCompQuery = "SELECT pl_name, pl_rade, pl_masse, pl_dens, pl_eqt FROM pscomppars WHERE pl_name in (\(planetStrings))"
        let response = try await queryEPA(selectQuery: psCompQuery, table: .pscomppars, fields: [], parameters: [], format: .json)
        return response.pscompparsResponse!
    }

    
    public func getConfirmedExoplanets() async throws -> [StellarhostsResponse] {
        
        let table = EPATable.stellarhosts
        let table = EPATable.stellarhosts
        let fields:[stellarhosts_columns] = [.hip_name, .gaia_id, .tic_id, .hostname, .st_age, .st_mass]
        let fieldStrings = fields.map{$0.id}
        

        let stellarHostQuery = "select+\(fields.joined(separator: ","))+from+\(table.id)+where+\(stellarhosts_columns.hip_name.id)+is+not+null"
        

        let response = try await queryEPA(selectQuery: stellarHostQuery, table: .stellarhosts, fields: [], parameters: [], format: .json)
        return response.stellarhostsResponse!
    }

    
    public func getEPProperties(from host: String) async throws -> EPAResponse {
        let selectQuery = "SELECT *  FROM ps WHERE hostname = '\(host)'"
        var response = try await queryEPA(selectQuery: selectQuery, table: .ps, fields: [], parameters: [], format: .json)
        if let payload = response.psResponse {
            let planetNames = payload.compactMap { $0.pl_name }
            let planetStrings = planetNames.map { "'\($0)'" }.joined(separator: ",")
            let spectralQuery = "SELECT * FROM spectra WHERE pl_name in (\(planetStrings))"
            let spectraResponse = try await queryEPA(selectQuery: spectralQuery, table: .spectra, fields: [], parameters: [], format: .json)
            if let spectra = spectraResponse.spectraResponse {
                response.setSpectraResponse(spectra)
            }
        }
        return response
    }

    
}
