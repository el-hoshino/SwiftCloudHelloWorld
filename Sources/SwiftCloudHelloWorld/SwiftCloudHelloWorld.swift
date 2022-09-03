import Foundation
import Compute

@main
public struct SwiftCloudHelloWorld {
    
    public static func main() async throws {
        try await onIncomingRequest(router.run)
    }
    
    static let router = Router()
        .get("") { req, res in
            try await res
                .status(.ok)
                .send("Hello, World!")
        }
        .get("/greeting") { req, res in
            let jsonBody = try await req.body.jsonObject()
            let name = jsonBody["name"] as? String ?? ""
            let result = "Hello, \(name)!"
            let resultJSON = [
                "greeting": result,
            ]
            let resultData = try JSONEncoder().encode(resultJSON)
            try await res
                .status(.ok)
                .send(resultData)
        }
    
}
