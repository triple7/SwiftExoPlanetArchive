import Foundation

extension SwiftExoPlanetArchive {
    
    /** request returned data check
     */
    private func requestIsValid(error: Error?, response: URLResponse?, url: URL? = nil) -> Bool {
        var gotError = false
        if error != nil {
            self.sysLog.append(EPASyslog(log: .RequestError, message: error!.localizedDescription))
            gotError = true
        }
        if (response as? HTTPURLResponse) == nil {
            self.sysLog.append(EPASyslog(log: .RequestError, message: "response timed out"))
            gotError = true
        }
        if let response = response {
            let urlResponse = (response as! HTTPURLResponse)
            if urlResponse.statusCode != 200 {
                let error = NSError(domain: "com.error", code: urlResponse.statusCode)
                self.sysLog.append(EPASyslog(log: .RequestError, message: error.localizedDescription))
                gotError = true
            }
        } else {
            self.sysLog.append(EPASyslog(log: .RequestError, message: "response timed out"))
            gotError = true
        }
        if !gotError {
            let message = url != nil ? url!.absoluteString : "data"
            self.sysLog.append(EPASyslog(log: .OK, message: "\(message) downloaded"))
        }
        return !gotError
    }


    public func queryEPA(selectQuery: String? = nil,
                         table: EPATable,
                         fields: [String],
                         parameters: [EPAParameter],
                         format: EPAFormat = .json) async throws -> EPAResponse {
        var request: EPARequest
        if let _ = selectQuery {
            request = EPARequest()
        } else {
            request = EPARequest(table: table, fields: fields, parameters: parameters, format: format)
        }
        let url = request.getUrl(selectQuery)
        let configuration = URLSessionConfiguration.ephemeral
        let session = URLSession(configuration: configuration, delegate: self, delegateQueue: nil)
        let (data, response) = try await session.data(from: url)
        guard requestIsValid(error: nil, response: response, url: url) else {
            throw EPAError.RequestError
        }
        var result = EPAResponse()
        let decoder = JSONDecoder()
        switch table {
        case .spectra:
            result.setSpectraResponse(try decoder.decode([SpectraResponse].self, from: data))
        case .pscomppars:
            result.setPscompparsResponse(try decoder.decode([PscompparsResponse].self, from: data))
        case .superwasptimeseries:
            result.setSuperwasptimeseriesResponse(try decoder.decode([SuperwasptimeseriesResponse].self, from: data))
        case .kelttimeseries:
            result.setKelttimeseriesResponse(try decoder.decode([KelttimeseriesResponse].self, from: data))
        case .stellarhosts:
            result.setStellarhostsResponse(try decoder.decode([StellarhostsResponse].self, from: data))
        case .transitspec:
            result.setTransitspecResponse(try decoder.decode([TransitspecResponse].self, from: data))
        case .emissionspec:
            result.setEmissionspecResponse(try decoder.decode([EmissionspecResponse].self, from: data))
        case .ps:
            result.setPsResponse(try decoder.decode([PsResponse].self, from: data))
        case .keplernames:
            result.setKeplernamesResponse(try decoder.decode([KeplernamesResponse].self, from: data))
        case .k2names:
            result.setK2namesResponse(try decoder.decode([K2namesResponse].self, from: data))
        case .toi:
            result.setToiResponse(try decoder.decode([ToiResponse].self, from: data))
        case .tic_v8:
            result.setTICV8Response(try decoder.decode([TICV8Response].self, from: data))
        case .ukirttimeseries:
            result.setUkirttimeseriesResponse(try decoder.decode([UkirttimeseriesResponse].self, from: data))
        case .ml:
            result.setMlResponse(try decoder.decode([MlResponse].self, from: data))
        case .object_aliases:
            result.setObject_aliasesResponse(try decoder.decode([Object_aliasesResponse].self, from: data))
        default:
            break
        }
        sysLog.append(EPASyslog(log: .OK, message: "result on \(table.id) downloaded"))
        return result
    }

    
}
