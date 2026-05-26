import StygianGatewayKit
import Testing

@Suite("GatewayInternalTrust")
struct GatewayInternalTrustTests {
  @Test("canonicalSignedPath strips query")
  func canonicalSignedPathStripsQuery() {
    #expect(GatewayInternalTrust.canonicalSignedPath("/v1/foo?bar=1") == "/v1/foo")
  }
}
