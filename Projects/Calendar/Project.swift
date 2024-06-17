//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by Katherine JANG on 6/17/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let calendarTarget = Target.target(
    name: "Calendar",
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

let calendarTestTarget = Target.target(
    name: "CalendarTest",
    destinations: .iOS,
    product: .unitTests,
    bundleId: "net.hejang.-4HANE",
    deploymentTargets: .iOS("15.0"),
//    infoPlist:  "./HANE24/Info.plist",
    sources: ["./Test/Sources/**"],
    resources: ["../Resources/**"],
    dependencies: [
//            .project(target: "HaneUtils", path: "../HaneUtils") ,
//            .project(target: "NetworkManage", path: "../NetworkManage")
        .project(target: "Calendar", path: "./")
    ]
)

let project = Project.project(name: "Calendar", target: [calendarTarget, calendarTestTarget])
