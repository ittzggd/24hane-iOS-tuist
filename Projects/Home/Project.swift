//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by Katherine JANG on 6/17/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let homeTarget = Target.target(
    name: "Home",
    destinations: .iOS,
    product: .app,
    bundleId: "net.hejang.-4HANE",
    deploymentTargets: .iOS("15.0"),
//    infoPlist:  "./HANE24/Info.plist",
    sources: ["./Sources/**"],
    resources: ["../Resources/**"],
    dependencies: [
        .project(target: "HaneUtils", path: "../HaneUtils") ,
        .project(target: "NetworkManage", path: "../NetworkManage"),
        .project(target: "HaneError", path: "../HaneError")
    ]
)

let project = Project.app(target: homeTarget)
