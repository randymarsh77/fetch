import PackageDescription

let package = Package(
    name: "Fetch",
	dependencies: [
		.Package(url: "https://github.com/randymarsh77/async", majorVersion: 1)
	]
)
