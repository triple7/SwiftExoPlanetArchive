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

    public func queryEPA(selectQuery: String? = nil, table: EPATable, fields: [String], parameters: [EPAParameter], format: EPAFormat = .json, closure: @escaping (EPAResponse)-> Void) {
        /** Gets a TAP (Table Access protocol) result
         Params:
         table: the table to query
         fields: which fields to use
         params: the WHERe clause elements
         format: what format to return
         closure: the resulting json data
         */
        

        var request:EPARequest
        if let selectQuery = selectQuery {
            request = EPARequest()
        } else {
            request = EPARequest(table: table, fields: fields, parameters: parameters, format: format)
        }

        print(request.getUrl(selectQuery))
        let configuration = URLSessionConfiguration.ephemeral
        let queue = OperationQueue.main
        let session = URLSession(configuration: configuration, delegate: self, delegateQueue: queue)
        
        let task = session.dataTask(with: request.getUrl(selectQuery)) { [weak self] data, response, error in
            
            var result = EPAResponse()
            if self!.requestIsValid(error: error, response: response) {
                print(String(data: data!, encoding: .utf8))
                switch table {
                case .spectra:
                    result.setSpectraResponse(try! JSONDecoder().decode([SpectraResponse].self, from: data!))
                case .pscomppars:
                    result.setPscompparsResponse(try! JSONDecoder().decode([PscompparsResponse].self, from: data!))
                case .superwasptimeseries:
                    result.setSuperwasptimeseriesResponse(try! JSONDecoder().decode([SuperwasptimeseriesResponse].self, from: data!))
                case .kelttimeseries:
                    result.setKelttimeseriesResponse(try! JSONDecoder().decode([KelttimeseriesResponse].self, from: data!))
                case .stellarhosts:
                    result.setStellarhostsResponse(try! JSONDecoder().decode([StellarhostsResponse].self, from: data!))
                case .transitspec:
                    result.setTransitspecResponse(try! JSONDecoder().decode([TransitspecResponse].self, from: data!))
                case .emissionspec:
                    result.setEmissionspecResponse(try! JSONDecoder().decode([EmissionspecResponse].self, from: data!))
                case .ps:
                    result.setPsResponse(try! JSONDecoder().decode([PsResponse].self, from: data!))
                case .keplernames:
                    result.setKeplernamesResponse(try! JSONDecoder().decode([KeplernamesResponse].self, from: data!))
                case .k2names:
                    result.setK2namesResponse(try! JSONDecoder().decode([K2namesResponse].self, from: data!))
                case .toi:
                    result.setToiResponse(try! JSONDecoder().decode([ToiResponse].self, from: data!))
                case .ukirttimeseries:
                    result.setUkirttimeseriesResponse(try! JSONDecoder().decode([UkirttimeseriesResponse].self, from: data!))
                case .ml:
                    result.setMlResponse(try! JSONDecoder().decode([MlResponse].self, from: data!))
                case .object_aliases:
                    result.setObject_aliasesResponse(try! JSONDecoder().decode([Object_aliasesResponse].self, from: data!))
                default:
                    break
                }
                
                self?.sysLog.append(EPASyslog(log: .OK, message: "query \(request.getSelectQuery()) result downloaded"))
            }
            closure(result)
            return
        }
        task.resume()
    }

    
}
