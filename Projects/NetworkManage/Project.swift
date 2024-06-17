//
//  Projects.swift
//  ProjectDescriptionHelpers
//
//  Created by Katherine JANG on 6/17/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let networkManages = Target.target(
    name: "NetworkManage",
    destinations: .iOS,
    product: .framework,
    bundleId: "net.hejang.-4HANE",
    deploymentTargets: .iOS("15.0"),
//    infoPlist:  "./HANE24/Info.plist",
    sources: ["./Sources/**"],
    resources: ["../Resources/**"],
    dependencies: [
        .project(target: "HaneError", path: "../HaneError")
    ]
)

let project = Project.framework(target: networkManages)
