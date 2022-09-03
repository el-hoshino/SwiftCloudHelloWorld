import Compute

@main
public struct SwiftCloudHelloWorld {
    
    public static func main() async throws {
        try await onIncomingRequest(router.run)
    }
    
    static let router = Router()
        .get("") { req, res in
            let jsonBody = try await req.body.jsonObject()
            let name = jsonBody["name"] as? String ?? ""
            let result = "Hello, \(name)!"
            try await res
                .status(.ok)
                .send(result)
        }
        .get("/json_test") { req, res in
            let body = try await req.body.jsonObject()
            try await res
                .status(.ok)
                .send(body)
        }
    
}
