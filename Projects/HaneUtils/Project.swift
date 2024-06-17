//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by Katherine JANG on 6/17/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let haneUtils = Target.target(
    name: "HaneUtils",
    destinations: .iOS,
    product: .framework,
    bundleId: "net.hejang.-4HANE",
    deploymentTargets: .iOS("15.0"),
//    infoPlist:  "./HANE24/Info.plist",
    sources: ["./Sources/**"],
    resources: ["../Resources/**"],
    dependencies: [
//        .project(target: "Widget", path: "../WidgetExtension")
    ]
)

let project = Project.framework(target: haneUtils)
