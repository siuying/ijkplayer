Pod::Spec.new do |s|
  s.name         = "IJKMediaFramework"
  s.version      = "0.4.2.4"
  s.summary      = " Android/iOS video player based on FFmpeg n2.8, with MediaCodec, VideoToolbox support."
  s.homepage     = "https://github.com/siuying/ijkplayer"
  s.license      = { :type => "LGPL", :file => "COPYING.LGPLv3" }

  s.author       = { "Zhang Rui" => "bbcallen@gmail.com" }

  s.platform     = :ios
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/siuying/ijkplayer.git", :tag => "s0.4.2.4" }

  s.source_files  = "ios/IJKMediaPlayer/**/*.{h,m}",
    "ijkmedia/ijkplayer/*.{h,c}",
    "ijkmedia/ijkplayer/pipeline/*.{h,c}",
    "ijkmedia/ijkplayer/ijkavutil/*.{h,c}",
    "ijkmedia/ijkplayer/ijkavformat/*.{h,c}",
    "ios/IJKMediaPlayer/IJKMediaPlayer/ijkmedia/**/*.{h,c}",
    "ijkmedia/ijksdl/*.{h,c}",
    "ijkmedia/ijksdl/ffmpeg/*.{h,c}",
    "ijkmedia/ijksdl/dummy/*.{h,c}",
    "ijkmedia/ijksdl/gles/*.{h,c}"

  s.public_header_files = "ios/IJKMediaPlayer/IJKMediaPlayer/IJKMediaPlayback.h",
    "ios/IJKMediaPlayer/IJKMediaPlayer/IJKMPMoviePlayerController.h",
    "ios/IJKMediaPlayer/IJKMediaPlayer/IJKFFOptions.h",
    "ios/IJKMediaPlayer/IJKMediaPlayer/IJKFFMoviePlayerController.h",
    "ios/IJKMediaPlayer/IJKMediaPlayer/IJKAVMoviePlayerController.h",
    "ios/IJKMediaPlayer/IJKMediaPlayer/IJKMediaModule.h",
    "ios/IJKMediaPlayer/IJKMediaPlayer/IJKMediaPlayer.h",
    "ijkmedia/ijkplayer/*.h",
    "ijkmedia/ijkplayer/pipeline/*.h",
    "ijkmedia/ijkplayer/ijkavutil/*.h",
    "ijkmedia/ijkplayer/ijkavformat/*.h",
    "ios/IJKMediaPlayer/IJKMediaPlayer/ijkmedia/**/*.h",
    "ijkmedia/ijksdl/*.h",
    "ijkmedia/ijksdl/ffmpeg/*.h",
    "ijkmedia/ijksdl/dummy/*.h",
    "ijkmedia/ijksdl/gles/*.h"

  s.requires_arc = true
  s.prepare_command = 'sh download-ios.sh'
  s.vendored_libraries = 'vendor/ffmpeg-ios-static-libs/lib/libavcodec.a',
    'vendor/ffmpeg-ios-static-libs/lib/libavdevice.a',
    'vendor/ffmpeg-ios-static-libs/lib/libavfilter.a',
    'vendor/ffmpeg-ios-static-libs/lib/libavformat.a',
    'vendor/ffmpeg-ios-static-libs/lib/libavutil.a',
    'vendor/ffmpeg-ios-static-libs/lib/libswresample.a',
    'vendor/ffmpeg-ios-static-libs/lib/libswscale.a'
  s.preserve_paths = "vendor/ffmpeg-ios-static-libs/lib/*.a"
  s.library = [
    'avcodec',
    'avdevice',
    'avfilter',
    'avformat',
    'avutil',
    'swresample',
    'swscale'
  ]

end
