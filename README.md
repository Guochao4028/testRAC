# 尝试学RAC框架
## RAC导入
-  podfile 
-- pod "ReactiveCocoa", '~> 2.5'

		# Uncomment the next line to define a global platform for your project
		# platform :ios, '9.0'
		source 'http://repo.baichuan-ios.taobao.com/baichuanSDK/AliBCSpecs.git'
		source 'https://github.com/CocoaPods/Specs.git'

		target 'ALiLikePurchase' do


		pod "ReactiveCocoa", '~> 2.5'

		end
- RAC统一了对KVO、UI Event、Network request、Async work的处理，因为它们本质上都是值的变化(Values over time)。
- 