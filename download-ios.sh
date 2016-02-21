VERSION=61cf580b182c2f91a9853a2bf0fa99221d3fb905
URL="https://www.dropbox.com/s/rhfpfjwn2oh3z2c/ffmpeg-ios-static-libs-${VERSION}.zip?dl=1"
UNZIP_DIR="ffmpeg-ios-static-libs-${VERSION}"

mkdir vendor
cd vendor
wget $URL -O ffmpef-ios-static-libs.zip &&
  unzip ffmpef-ios-static-libs.zip &&
  mv $UNZIP_DIR "ffmpeg-ios-static"
