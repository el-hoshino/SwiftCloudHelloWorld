import Compute

@main
public struct SwiftCloudHelloWorld {
    
    public static func main() async throws {
        try await onIncomingRequest(handler)
    }
    
    static func handler(
        req: IncomingRequest,
        res: OutgoingResponse
    ) async throws {
        try await onIncomingRequest(router.run)
    }
    
    static let router = Router()
        .get("") { req, res in
            try await res
                .status(.ok)
                .send("Hello, Swift Cloud!")
        }
        .post("/json_test") { req, res in
            try await res
                .status(.ok)
                .send("\(req.body)")
        }
    
}
