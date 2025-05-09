// swift-tools-version: 6.0
import PackageDescription

#if TUIST
    import struct ProjectDescription.PackageSettings

    let packageSettings = PackageSettings(
        // Customize the product types for specific package product
        // Default is .staticFramework
        // productTypes: ["Alamofire": .framework,]
        productTypes: ["ComposableArchitecture":.framework]
    )
#endif

let package = Package(
    name: "StoreApp",
    dependencies: [
        // TCA
        .package(url: "https://github.com/pointfreeco/swift-composable-architecture", from: "1.19.1")
    ]
)
