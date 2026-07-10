source 'https://cdn.cocoapods.org/'

# Fetch SwiftLint as a standalone CLI tool.
# Do not integrate CocoaPods into the Xcode project,
# so linting stays separate from normal builds.
install! 'cocoapods',
         integrate_targets: false,
         skip_pods_project_generation: true

platform :ios, '15.2'

# CocoaPods requires dependencies to belong to a concrete target.
# This target exists only to download the SwiftLint CLI;
# integration is disabled above so it does not create Xcode build phases.
target 'SwiftLintTool' do
  pod 'SwiftLint', '0.64.0'
end
