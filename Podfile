# Uncomment this line to define a global platform for your project
# platform :ios, '9.0'

target 'RLShowRoom' do
  # Comment this line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for RLShowRoom
  pod 'Firebase', '>= 2.5.1'
  pod 'Firebase/Core'
  pod 'Firebase/Auth'
  pod 'Firebase/Crash'
  pod 'Firebase/Database'
  pod 'Firebase/Messaging'
  pod 'Firebase/Storage'
  pod 'FBSDKLoginKit', '~> 4.15'
  pod 'FBSDKCoreKit', '~> 4.15'
  pod 'GoogleSignIn'
  pod 'RxSwift',    '~> 3.0.0-beta.1'
  pod 'RxCocoa',    '~> 3.0.0-beta.1'
  pod 'SwiftKeychainWrapper', :git => 'https://github.com/jrendel/SwiftKeychainWrapper.git', :branch => 'master'

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['SWIFT_VERSION'] = '3.0'
      config.build_settings['MACOSX_DEPLOYMENT_TARGET'] = '10.10'
    end
  end
end

  target 'RLShowRoomTests' do
    inherit! :search_paths
    # Pods for testing
    pod 'RxBlocking', '~> 3.0.0-beta.1'
    pod 'RxTests',    '~> 3.0.0-beta.1'
  end

end
