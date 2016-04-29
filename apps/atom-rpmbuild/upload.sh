#!/bin/sh

RPMS_DIR=out
BASE_DESC=https://github.com/lburgazzoli/lb-docker

for RPM_FILE in $RPMS_DIR/*.rpm; do

  RPM_NAME=`rpm --queryformat "%{NAME}" -qp $RPM_FILE`
  RPM_VERSION=`rpm --queryformat "%{VERSION}" -qp $RPM_FILE`
  RPM_RELEASE=`rpm --queryformat "%{RELEASE}" -qp $RPM_FILE`
  RPM_ARCH=`rpm --queryformat "%{ARCH}" -qp $RPM_FILE`

  echo "RPM_NAME=$RPM_NAME, RPM_VERSION=$RPM_VERSION, RPM_RELEASE=$RPM_RELEASE, RPM_ARCH=$RPM_ARCH"

  echo "@@@@@@@@@@@@@@@@@@@@@@"
  echo "@@@ create package @@@"
  echo "@@@@@@@@@@@@@@@@@@@@@@"
  curl -vvf -u$BINTRAY_USER:$BINTRAY_APIKEY \
    -H "Content-Type: application/json" \
    -X POST https://api.bintray.com/packages/$BINTRAY_ACCOUNT/$BINTRAY_REPO/ \
    --data "{ \"name\": \"$RPM_NAME\", \"desc\": \"auto\", \"desc_url\": \"$BASE_DESC/$RPM_NAME\", \"labels\": \"\" }"

  echo "@@@@@@@@@@@@@@@@@@@@@@"
  echo "@@@ delete version @@@"
  echo "@@@@@@@@@@@@@@@@@@@@@@"
  curl -vvf -u$BINTRAY_USER:$BINTRAY_APIKEY \
    -X DELETE https://api.bintray.com/packages/$BINTRAY_ACCOUNT/$BINTRAY_REPO/$RPM_NAME/versions/$RPM_VERSION-$RPM_RELEASE

  echo "@@@@@@@@@@@@@@@@@@@@@@"
  echo "@@@ create version @@@"
  echo "@@@@@@@@@@@@@@@@@@@@@@"
  curl -vvf -u$BINTRAY_USER:$BINTRAY_APIKEY \
    -H "Content-Type: application/json" -X POST https://api.bintray.com/packages/$BINTRAY_ACCOUNT/$BINTRAY_REPO/$RPM_NAME/versions \
    --data "{ \"name\": \"$RPM_VERSION-$RPM_RELEASE\", \"release_notes\": \"auto\", \"release_url\": \"$BASE_DESC/$RPM_NAME\", \"released\": \"\" }"

  echo "@@@@@@@@@@@@@@@@@@@@@@"
  echo "@@@ upload content @@@"
  echo "@@@@@@@@@@@@@@@@@@@@@@"
  curl -vvf -T $RPM_FILE -u$BINTRAY_USER:$BINTRAY_APIKEY \
    -H "X-Bintray-Package:$RPM_NAME" \
    -H "X-Bintray-Version:$RPM_VERSION-$RPM_RELEASE" https://api.bintray.com/content/$BINTRAY_ACCOUNT/$BINTRAY_REPO/

  echo "@@@@@@@@@@@@@@@@@@@@@@@"
  echo "@@@ publish content @@@"
  echo "@@@@@@@@@@@@@@@@@@@@@@@"
  curl -vvf -u$BINTRAY_USER:$BINTRAY_APIKEY \
    -H "Content-Type: application/json" \
    -X POST https://api.bintray.com/content/$BINTRAY_ACCOUNT/$BINTRAY_REPO/$RPM_NAME/$RPM_VERSION-$RPM_RELEASE/publish \
    --data "{ \"discard\": \"false\" }"

done
