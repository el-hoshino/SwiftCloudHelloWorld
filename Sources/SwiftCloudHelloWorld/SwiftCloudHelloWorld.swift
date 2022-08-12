@main
public struct SwiftCloudHelloWorld {
    public private(set) var text = "Hello, World!"

    public static func main() {
        print(SwiftCloudHelloWorld().text)
    }
}
