set -e

echo "admin's password: $(cat "$ENV_DIR/ADMIN_PASSWORD")"

curl "https://www.redmine.org/releases/redmine-$(cat "$ENV_DIR/REDMINE_VERSION").tar.gz" | tar xz --strip 1
mv overlays/config/* config
