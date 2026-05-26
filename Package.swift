// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "gateway-trust-kit",
  platforms: [.macOS(.v14)],
  products: [.library(name: "GatewayTrustKit", targets: ["GatewayTrustKit"])],
  dependencies: [
    .package(url: "https://github.com/Stygian-Tech/atproto-primitive-kit.git", revision: "1105fb3c008a1048c40b9d1b71cc2cc8e51319b0"),
    .package(url: "https://github.com/apple/swift-crypto.git", from: "3.14.0"),
  ],
  targets: [
    .target(
      name: "GatewayTrustKit",
      dependencies: [
        .product(name: "ATProtoPrimitiveKit", package: "atproto-primitive-kit"),
        .product(name: "Crypto", package: "swift-crypto"),
      ],
      path: "Sources/GatewayTrustKit",
      swiftSettings: [.swiftLanguageMode(.v6)]
    ),
    .testTarget(
      name: "GatewayTrustKitTests",
      dependencies: ["GatewayTrustKit"],
      path: "Tests/GatewayTrustKitTests",
      swiftSettings: [.swiftLanguageMode(.v6)]
    ),
  ]
)
