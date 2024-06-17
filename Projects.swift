import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

// Creates our project using a helper function defined in ProjectDescriptionHelpers:wq
let project = Project(
    name: "HANE24",
    organizationName: "HANE24-iOS",
    targets: [
        apptarget,
        testTarget,
        widgetTarget
    ]
)
