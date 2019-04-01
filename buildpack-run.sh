set -e

curl https://www.redmine.org/releases/redmine-4.0.3.tar.gz | tar xz --strip 1
mv overlays/config/* config
