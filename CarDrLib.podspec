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

  # Include all header files from the XCFramework
  spec.source_files = 'CarDrLib.xcframework/**/*.h'

  # Include all Swift files from the CarDrLib directory
  spec.source_files = ['CarDrLib.xcframework/**/*.h', 'CarDrLib/**/*.swift']

  # Include the required frameworks
  spec.frameworks = 'CoreBluetooth'

  # Link required libraries
  spec.libraries = 'z', 'c++'

  # Ensure ARC is enabled
  spec.requires_arc = true

  # If the XCFramework includes any resource files (e.g., .bundle), include them as well
   spec.resources = 'CarDrLib.xcframework/**/*.plist'

end
