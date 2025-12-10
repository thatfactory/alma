[![swift-version](https://img.shields.io/badge/swift-6.2-ea7a50.svg?logo=swift&logoColor=white)](https://developer.apple.com/swift/)
[![xcode-version](https://img.shields.io/badge/xcode-26.2-50ace8.svg?logo=xcode&logoColor=white)](https://developer.apple.com/xcode/)
[![spm-ready](https://img.shields.io/badge/spm-ready-b68f6a.svg?logo=gitlfs&logoColor=white)](https://developer.apple.com/documentation/xcode/swift-packages)
[![platforms](https://img.shields.io/badge/platforms-iOS%20%7C%20iPadOS%20%7C%20macOS%20%7C%20Mac%20Catalyst%20%7C%20tvOS%20%7C%20visionOS-lightgrey.svg?logo=apple&logoColor=white)](https://en.wikipedia.org/wiki/List_of_Apple_operating_systems)
[![license](https://img.shields.io/badge/license-MIT-67ac5b.svg?logo=googledocs&logoColor=white)](https://en.wikipedia.org/wiki/MIT_License)
[![release](https://github.com/thatfactory/alma/actions/workflows/release.yml/badge.svg)](https://github.com/thatfactory/alma/actions/workflows/release.yml)

# ALMA 👾
## Purpose
Helps developers to make games for the Apple ecosystem without recoding core elements.

### High-level overview
The image below represents the project's high-level vision.  
Details will change over time, but the main idea will be preserved:

![High-level overview](./Images/ALMA_Vision.png)

### Current implementation
A snapshot of the current implementation:

![Current implementation](./Images/ALMA_Current.png)

## Integration
### Xcode
Use Xcode's [built-in support for SPM](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app).

*or...*

### Package.swift
In your `Package.swift`, add `ALMA` as a dependency:
```swift
dependencies: [
    .package(
        url: "https://github.com/thatfactory/alma",
        from: "0.1.0"
    )
]
```

Associate the dependency with your target:
```swift
targets: [
    .target(
        name: "YourTarget",
        dependencies: [
            .product(
                name: "ALMA",
                package: "alma"
            )
        ]
    )
]
```

Run: `swift build`
