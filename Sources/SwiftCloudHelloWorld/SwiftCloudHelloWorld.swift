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
        try await res
            .status(.ok)
            .send("Hello, Swift Cloud!")
    }
    
}
