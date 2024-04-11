import ProjectDescription

let project = Project(
    name: "GitBranchCleanup",
    options: .options(
        textSettings: .textSettings(usesTabs: false, indentWidth: 2, tabWidth: 2, wrapsLines: true)
    ),
    targets: [
        .target(
            name: "GitBranchCleanup",
            destinations: .macOS,
            product: .app,
            bundleId: "com.benlaverriere.GitBranchCleanup",
            infoPlist: .default,
            sources: ["GitBranchCleanup/Sources/**"],
            resources: ["GitBranchCleanup/Resources/**"],
            dependencies: [
                .external(name: "SwiftCLI")
            ]
        ),
        .target(
            name: "GitBranchCleanupTests",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.benlaverriere.GitBranchCleanupTests",
            infoPlist: .default,
            sources: ["GitBranchCleanup/Tests/**"],
            resources: [],
            dependencies: [.target(name: "GitBranchCleanup")]
        ),
    ]
)
