//
//  Untitled.swift
//  SwiftExoPlanetArchive
//
//  Created by Yuma decaux on 20/4/2025.
//

extension SwiftExoPlanetArchive {

    /// Async/await version of `getTableProperties(from:columns:)`
    @available(macOS 12.0, iOS 15.0, *)
    public func getTableProperties(from table: EPATable) async throws -> EPAResponse {
        let selectQuery = "SELECT * FROM TAP_SCHEMA.columns WHERE table_name = '\(table.id)'"
        return try await queryEPA(selectQuery: selectQuery, table: table, fields: [], parameters: [], format: .json)
    }

    
    /// Async/await version of `getEPProperties(from:properties:)`
    @available(macOS 12.0, iOS 15.0, *)
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
