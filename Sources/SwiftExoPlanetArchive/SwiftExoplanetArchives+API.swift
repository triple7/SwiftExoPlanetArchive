//
//  Untitled.swift
//  SwiftExoPlanetArchive
//
//  Created by Yuma decaux on 20/4/2025.
//

extension SwiftExoPlanetArchive {

    public func getEPProperties(from host: String, properties: @escaping (EPAResponse) -> Void) {
        let selectQuery = "SELECT *  FROM ps WHERE hostname = '\(host)'"

        queryEPA(selectQuery: selectQuery, table: .ps, fields: [], parameters: [], closure: { response in
            


            let payload = response.psResponse!
            let planets = Set(arrayLiteral: payload.map{$0.pl_name!})
            let planetStrings = Array(planets).map{"'\($0)'"}.joined(separator: ",")
            let spectralQuery = "SELECT * FROM spectra WHERE pl_name in (\(planetStrings))"

            self.queryEPA(selectQuery: spectralQuery, table: .spectra, fields: [], parameters: [], closure: { spectraResponse in
                
                var payload = response
                payload.setSpectraResponse(spectraResponse.spectraResponse!)
                properties(response)
            })
        })
    }


}
