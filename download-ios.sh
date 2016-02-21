VERSION=61cf580b182c2f91a9853a2bf0fa99221d3fb905
URL="https://github.com/chrisballinger/ffmpeg-ios-static-libs/archive/${VERSION}.zip"
UNZIP_DIR="ffmpeg-ios-static-libs-${VERSION}"

mkdir vendor
cd vendor
wget $URL -O ffmpef-ios-static-libs.zip &&
  unzip ffmpef-ios-static-libs.zip &&
  mv $UNZIP_DIR "ffmpeg-ios-static"
