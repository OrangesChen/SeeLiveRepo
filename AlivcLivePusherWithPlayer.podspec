#
# Be sure to run `pod lib lint AlivcLivePusherWithPlayer.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AlivcLivePusherWithPlayer'
  s.version          = '3.4.0'
  s.summary          = 'AlivcLivePusherWithPlayer_iOS'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                        It's an SDK for aliyun video vodplay, which implement by Objective-C.
                        DESC
  s.homepage         = 'https://github.com/OrangesChen/AlivcLivePusherWithPlayer.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'fengqun' => 'fengqun@seeapp.com' }
  s.source           = { :git => 'https://github.com/OrangesChen/AlivcLivePusherWithPlayer.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

#  s.source_files = 'AlivcLivePusherWithPlayer/Classes/**/*'
  s.subspec 'AlivcLivePusherWithPlayer' do |pusher_playersdk|
  pusher_playersdk.vendored_frameworks = 'AlivcLivePusher.framework','AlivcLibRtmp.framework','AliyunPlayerSDK.framework','AlivcLibBeauty.framework','AlivcLibFace.framework','AliThirdparty.framework'
  pusher_playersdk.resource = 'AlivcLibFaceResource.bundle','AliyunLanguageSource.bundle'
  end
end
