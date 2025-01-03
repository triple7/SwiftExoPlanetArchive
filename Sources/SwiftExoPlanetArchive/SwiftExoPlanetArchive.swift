import Foundation

public enum EPAError:Error {
    case NoSuchObject
    case noConnection
    case RequestError
    case OK
}

public struct EPASyslog:CustomStringConvertible {
    let log:EPAError
    let message:String
    let timecode:String
    
    init( log: EPAError, message: String) {
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy--MM-dd hh:mm:ss"
        self.timecode = dateFormatter.string(from: date)

        self.log = log
                  self.message = message
        print("EPA: \(log) \(message)")
    }
    
    public var description:String {
        return "\(log): \(message)"
    }
}

public final class SwiftExoPlanetArchive:NSObject, @unchecked Sendable {
    
    internal var buffer:Int = 0
    public var progress:Float?
    internal var expectedContentLength:Int?
    
    public var sysLog:[EPASyslog]!
    
    public override init() {
        self.sysLog = [EPASyslog]()
    }

    
    public func printLogs() {
        for log in sysLog {
            print(log.description)
        }
    }

}

extension SwiftExoPlanetArchive: URLSessionDelegate {
 
    func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive response: URLResponse, completionHandler: @escaping (URLSession.ResponseDisposition) -> Void) {
        expectedContentLength = Int(response.expectedContentLength)
    }
    
    func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) {
        buffer += data.count
        let percentageDownloaded = Float(buffer) / Float(expectedContentLength!)
           progress =  percentageDownloaded
    }

    
}
