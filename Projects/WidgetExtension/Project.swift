//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by Katherine JANG on 6/17/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let widgetExtension = Target.target(
    name: "Widget",
    destinations: .iOS,
    product: .appExtension,
    bundleId: "net.hejang.-4HANE",
    deploymentTargets: .iOS("15.0"),
//    infoPlist:  "./HANE24/Info.plist",
    sources: ["./Sources/**"],
    resources: ["../Resources/**"],
    dependencies: [
        .project(target: "HaneUtils", path: "../HaneUtils") ,
        .project(target: "NetworkManage", path: "../NetworkManage")
    ]
)

let project = Project.appExtension(target: widgetExtension)

