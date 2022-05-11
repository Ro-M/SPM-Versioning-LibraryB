// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

// The Package I can use to distribute MyLibraryB as a binary target

let package = Package(
  name: "MyLibraryB",
  platforms: [
    .iOS(.v11),
  ],
  products: [
    .library(
      name: "MyLibraryB",
      targets: ["MyLibraryB_Binary"]),
  ],
  dependencies: [],
  targets: [
    .binaryTarget(
      name: "MyLibraryB_Binary",
      path: "MyLibraryB.xcframework")
  ]
)

// The Package I can use to develop MyLibraryB and to build the XCFramework

//let package = Package(
//  name: "MyLibraryB",
//  platforms: [
//    .iOS(.v11),
//  ],
//  products: [
//    .library(
//      name: "MyLibraryB",
//      type: .dynamic,
//      targets: ["MyLibraryB"]),
//  ],
//  dependencies: [],
//  targets: [
//    .target(
//      name: "MyLibraryB",
//      dependencies: []),
//  ]
//)
