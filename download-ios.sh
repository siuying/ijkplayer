VERSION=k0.4.5.1
URL="https://www.dropbox.com/s/g2tem4ltmj6d46n/build-${VERSION}.tgz?dl=1"
DOWNLOADED_FILE="build-${VERSION}.tgz"
UNZIP_DIR="ffmpeg-ios-static-libs-${VERSION}"

mkdir vendor
cd vendor
wget $URL -O $DOWNLOADED_FILE && tar vxfz $DOWNLOADED_FILE
mv build ../ios
