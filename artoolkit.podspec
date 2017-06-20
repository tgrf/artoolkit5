#
#  Be sure to run `pod spec lint artoolkit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "artoolkit"
  s.version      = "5.3.2"
  s.summary      = "ARToolKit is software that lets programmers easily develop Augmented Reality applications."
  s.description  = <<-DESC
ARToolKit is software that lets programmers easily develop Augmented Reality applications. Augmented Reality (AR) is the embedding of computer generated content into the natural environment, and has many potential applications in entertainment, media, advertising, industry, and academic research.
                   DESC
  s.homepage     = "https://github.com/tgrf/artoolkit5"
  s.license      = { :type => "LGPL v3.0", :file => "LICENSE.txt" }
  s.author       = { "ARToolKit Team" => "info@artoolkit.org" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/tgrf/artoolkit5.git", :branch => "feature/cocoapods_support" }

  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  s.source_files  = "include/*.{h,m}", "examples/ARAppCore/**/*.{h,m}"
  s.public_header_files = "include/*.{h}", "examples/ARAppCore/**/*.{h}"
  s.vendored_libraries = "lib/*.a", "lib/ios7/**/*.a", "lib/macosx-universal/*.a"

  s.subspec "ios7" do |ss|
    ss.source_files = "include/ios7/**/*.{h,m}",
    ss.public_header_files = "include/ios7/**/*.{h}"
  end

  s.subspec "AR" do |ss|
    ss.source_files = "include/AR/**/*.{h,m}",
    ss.public_header_files = "include/AR/**/*.{h}"
  end

  s.subspec "AR2" do |ss|
    ss.source_files = "include/AR2/**/*.{h,m}",
    ss.public_header_files = "include/AR2/**/*.{h}"
  end

  s.subspec "ARWrapper" do |ss|
    ss.source_files = "include/ARWrapper/**/*.{h,m}",
    ss.public_header_files = "include/ARWrapper/**/*.{h}"
  end

  s.subspec "Eden" do |ss|
    ss.source_files = "include/Eden/**/*.{h,m}",
    ss.public_header_files = "include/Eden/**/*.{h}"
  end

  s.subspec "KPM" do |ss|
    ss.source_files = "include/KPM/**/*.{h,m}",
    ss.public_header_files = "include/KPM/**/*.{h}"
  end

  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  s.frameworks = "Accelerate", "AssetsLibrary", "AudioToolbox", "AVFoundation", "CoreGraphics", "CoreMedia", "CoreVideo", "Foundation", "ImageIO", "MobileCoreServices", "OpenGLES", "QuartzCore", "UIKit"
  s.libraries = "c++", "z"

  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  s.requires_arc = true
  s.xcconfig  =  { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/artoolkit"',
                 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Headers/artoolkit"' }

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
