
Pod::Spec.new do |s|
s.name             = 'AARatingBar'
s.version          = '1.0'
s.summary          = 'AARatingBar is a simple, lightweight & easy-to-use rating bar designed to get and set ratings in iOS, written in Swift.'

s.description      = <<-DESC
AARatingBar is a customised storyboard based `UIView` class that allows to get and set ratings easily. It is allows to customise in the Storyboard without writing code.
DESC

s.homepage         = 'https://github.com/EngrAhsanAli/AARatingBar'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Engr. Ahsan Ali' => 'hafiz.m.ahsan.ali@gmail.com' }
s.source           = { :git => 'https://github.com/EngrAhsanAli/AARatingBar.git', :tag => s.version.to_s }

s.ios.deployment_target = '8.0'
s.source_files = 'AARatingBar/Classes/**/*'
s.swift_version = '5.0'

end
