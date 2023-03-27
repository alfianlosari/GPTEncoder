import XCTest
@testable import GPTEncoder

final class GPTEncoderTests: XCTestCase {
    func testEncodeAndDecode() throws {
        let encoder = GPTEncoder()
        
        let str = "The GPT family of models process text using tokens, which are common sequences of characters found in text."
        let encoded = encoder.encode(text: str)
        print("String: \(str)")
        print("Encoded this string looks like: \(encoded)")
        print("Total number of token(s): \(encoded.count) and character(s): \(str.count)")
        print("We can look at each token and what it represents")
        encoded.forEach { print("Token: \(encoder.decode(tokens: [$0]))") }
        
        print(encoded)
        let decoded = encoder.decode(tokens: encoded)
        print("We can decode it back into:\n\(decoded)")
        
        XCTAssertEqual(str, decoded)
    }
}
