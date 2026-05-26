// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "gateway-trust-kit",
  platforms: [.macOS(.v14)],
  products: [.library(name: "GatewayTrustKit", targets: ["GatewayTrustKit"])],
  dependencies: [
    .package(path: "../atproto-primitives"),
    .package(url: "https://github.com/apple/swift-crypto.git", from: "3.14.0"),
  ],
  targets: [
    .target(
      name: "GatewayTrustKit",
      dependencies: [
        .product(name: "AtprotoPrimitives", package: "atproto-primitives"),
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
