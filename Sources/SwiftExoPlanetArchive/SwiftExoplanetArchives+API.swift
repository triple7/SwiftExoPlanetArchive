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
            

            let spectralQuery = """
SELECT *
  FROM spectra
 WHERE hostname = '\(host)'
"""

            self.queryEPA(selectQuery: spectralQuery, table: .spectra, fields: [], parameters: [], closure: { spectraResponse in
                
                var payload = response
                payload.setSpectraResponse(spectraResponse.spectraResponse!)
                properties(response)
            })
        })
    }


    
}
