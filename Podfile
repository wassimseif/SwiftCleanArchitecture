# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'Network' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
inhibit_all_warnings!
  pod 'Moya/RxSwift'
  # Pods for Network

  target 'NetworkTests' do
    inherit! :search_paths
    # Pods for testing
  end

end

target 'SwiftCleanArchitecture' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for SwiftCleanArchitecture

  target 'SwiftCleanArchitectureTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'SwiftCleanArchitectureUITests' do
    inherit! :search_paths
    # Pods for testing
  end
post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '3.2'
        end
    end
end
end
