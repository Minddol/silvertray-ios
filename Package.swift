// swift-tools-version:5.3
//
//  Package.swift
//
//  Created by MinChul Lee on 2020/05/28.
//  Copyright (c) 2021 SK Telecom Co., Ltd. All rights reserved.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import PackageDescription

let package = Package(
    name: "SilverTray",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "SilverTray",
            targets: ["SilverTray"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "SilverTray-Opus",
            path: "Sources/SilverTray-Opus/Opus.xcframework"
        ),
        .target(
            name: "SilverTray-ObjC"
        ),
        .target(
            name: "SilverTray",
            dependencies: ["SilverTray-Opus", "SilverTray-ObjC"]
        )
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
