// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "stygian-gateway-kit",
  platforms: [.macOS(.v14)],
  products: [.library(name: "StygianGatewayKit", targets: ["StygianGatewayKit"])],
  dependencies: [
    .package(path: "../stygian-core"),
    .package(url: "https://github.com/apple/swift-crypto.git", from: "3.14.0"),
  ],
  targets: [
    .target(
      name: "StygianGatewayKit",
      dependencies: [
        .product(name: "StygianCore", package: "stygian-core"),
        .product(name: "Crypto", package: "swift-crypto"),
      ],
      path: "Sources/StygianGatewayKit",
      swiftSettings: [.swiftLanguageMode(.v6)]
    ),
    .testTarget(
      name: "StygianGatewayKitTests",
      dependencies: ["StygianGatewayKit"],
      path: "Tests/StygianGatewayKitTests",
      swiftSettings: [.swiftLanguageMode(.v6)]
    ),
  ]
)
