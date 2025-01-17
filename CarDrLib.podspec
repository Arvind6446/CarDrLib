Pod::Spec.new do |spec|
  spec.name         = 'CarDrLib'
  spec.version      = '1.0.1'
  spec.homepage     = 'https://github.com/Arvind6446/CarDrLib'
  spec.authors      = { 'Arvind Mehta' => 'arvind@cardr.com' }
  spec.summary      = 'Base interface for CarDrLib devices'
  spec.description  = <<-DESC
                      CarDrLib is a private framework providing core functionality
                      for CarDrLib devices, including communication and processing features.
                      DESC

  spec.license      = { :type => 'Proprietary', :text => 'All rights reserved.' }
  spec.source       = { :git => 'https://github.com/Arvind6446/CarDrLib.git', :tag => spec.version }

  # Define platform
  spec.platform     = :ios, '16.1'

  # Specify the XCFramework
  spec.vendored_frameworks = 'CarDrLib.xcframework'

  # Language and framework specifics
  spec.swift_version = '5.0'
  spec.framework     = 'CoreBluetooth'
  spec.libraries     = 'z', 'c++'

  # Exclude source files for binary-only distribution
  spec.source_files = 'RepairClubSDK.xcframework/**/*.h','CarDrLib/CarDrConnectionApi.swift'
end
