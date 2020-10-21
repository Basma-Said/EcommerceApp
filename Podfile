# Uncomment the next line to define a global platform for your project
platform :ios, '10.0'


def shared_pods

  # add the Firebase pod for Google Analytics
pod 'Firebase/Analytics', '6.1.0'
  # add pods for any other desired Firebase products
  # https://firebase.google.com/docs/ios/setup#available-pods
pod 'Firebase/Auth', '6.1.0'
pod 'Firebase/Firestore', '6.1.0'
pod 'Firebase/Storage', '6.1.0'
pod 'Firebase/Functions', '6.1.0'
pod 'IQKeyboardManagerSwift', '6.3.0'
pod 'Kingfisher', '~> 4.0'
end

target 'EcommerceAdmin' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for EcommerceAdmin

shared_pods
pod 'Stripe'
pod 'Alamofire'
end

target 'EcommerceApp' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for EcommerceApp

shared_pods
pod 'CropViewController'

end
