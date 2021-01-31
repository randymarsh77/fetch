// swift-tools-version:5.1
import PackageDescription

let package = Package(
	name: "Fetch",
	products: [
		.library(
			name: "Fetch",
			targets: ["Fetch"]
		),
	],
	dependencies: [
		.package(url: "https://github.com/randymarsh77/async", .branch("master")),
	],
	targets: [
		.target(
			name: "Fetch",
			dependencies: ["Async"]
		),
	]
)
