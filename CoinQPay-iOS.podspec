
Pod::Spec.new do |s|
  s.name             = 'CoinQPay-iOS'
  s.version          = '0.1.0'
  s.summary          = 'A Coin checkstand SDK'


  s.description      = <<-DESC
  CoinQPay-iOS是一个收银台， 整合了主流的中心化钱包支付SDK,用于简化iOS应用中的数据管理和用户界面交互。
                       DESC

  s.homepage         = 'https://github.com/coinq-pay/CoinQPay-iOS'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'dslAnna' => 'shilingdu176@gmail.com' }
  s.source           = { :git => 'https://github.com/coinq-pay/CoinQPay-iOS.git', :tag => s.version.to_s }


  s.ios.deployment_target = '10.0'

  
  s.xcconfig = { 'CLANG_MODULES_AUTOLINK' => 'YES' }
  s.requires_arc  = true
  s.static_framework = true

  s.vendored_frameworks = 'CoinQPay-iOS/CoinQPay.framework', 'CoinQPay-iOS/TPSDK.framework'
  s.resource = 'CoinQPay-iOS/CoinQPay.framework/CoinQPayResource.bundle', 'CoinQPay-iOS/TPSDK.framework/TPSDKBundle.bundle'
   
  s.pod_target_xcconfig = {
         'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
   }
  s.user_target_xcconfig = {
       'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
       'ENABLE_USER_SCRIPT_SANDBOXING' => 'NO'
   }
  

  s.frameworks = 'UIKit', 'Foundation'

  s.dependency 'Masonry','1.1.0'
  s.dependency 'OpenSSL-Universal','1.0.2.13'
  s.dependency 'Protobuf','3.13.0'
   
   
end
