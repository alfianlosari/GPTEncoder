import XCTest
@testable import GPTEncoder

@available(macOS 13.0, *)
final class GPTEncoderTests: XCTestCase {
    func testEncodeAndDecode() throws {
        let encoder = GPTEncoder()
        
        let str = "A helpful rule of thumb is that one token generally corresponds to ~4 characters of text for common English text. This translates to roughly ¾ of a word (so 100 tokens ~= 75 words)."
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
