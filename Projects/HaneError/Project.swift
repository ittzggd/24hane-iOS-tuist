//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by Katherine JANG on 6/17/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let haneError = Target.target(
    name: "HaneError",
    destinations: .iOS,
    product: .framework,
    bundleId: "net.hejang.-4HANE",
    deploymentTargets: .iOS("15.0"),
//    infoPlist:  "./HANE24/Info.plist",
    sources: ["./Sources/**"],
    resources: ["../Resources/**"],
    dependencies: []
)

let project = Project.framework(target: haneError)

