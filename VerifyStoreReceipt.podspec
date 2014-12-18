#
# Be sure to run `pod lib lint ${POD_NAME}.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "VerifyStoreReceipt"
  s.version          = "1.0.1"
  s.summary          = "This validator parses and validates the payload and the PKCS7 container itself."
  s.description      = <<-DESC
This validator parses and validates the payload and the PKCS7 container itself.

Thanks to Matthew Stevens for coming up with the parser code. Thanks to Dave Carlton for polishing it a bit. Thanks to Fraser Hess for more polish and correcting my non-native English. Thanks to anlumo for the certificate checking code. Thanks to Alessandro Segala for the In-App purchasing code.

Missing from this project:

Apple's root certificate. This may be obtained from http://www.apple.com/certificateauthority/
Any measures to make your app cracker proof.
                       DESC
  s.homepage         = "https://github.com/maciekish/VerifyStoreReceiptiOS"
  s.license          = 'MIT'
  s.author           = { "Maciej Swic (Only Pod)" => "maciej@swic.name" }
  s.source           = { :git => "https://github.com/maciekish/VerifyStoreReceipt.git", :tag => "1.0.1" }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'

  s.public_header_files = 'Pod/Classes/*.h'
  s.frameworks = 'StoreKit', 'Security'
  s.dependency 'OpenSSL-Universal', '1.0.1.j'
end
