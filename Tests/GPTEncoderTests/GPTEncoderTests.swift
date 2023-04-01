import XCTest
@testable import GPTEncoder

@available(macOS 13.0, *)
final class GPTEncoderTests: XCTestCase {
    func testEncodeAndDecode() throws {
        let encoder = GPTEncoder()
        
        let str = "這個算法真的太棒了"
        let encoded = encoder.encode(text: str)
        print("String: \(str)")
        print("Encoded this string looks like: \(encoded)")
        print("Total number of token(s): \(encoded.count) and character(s): \(str.count)")
        print("We can look at each token and what it represents")
        encoded.forEach { print("Token: \(encoder.decode(tokens: [$0]))") }
        
        print(encoded)
        let decoded = encoder.decode(tokens: encoded)
        print("We can decode it back into:\n\(decoded)")
        
    }
}
