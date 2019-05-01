set -e

echo "admin's password: $(cat "$ENV_DIR/ADMIN_PASSWORD")"

curl "https://www.redmine.org/releases/redmine-$(cat "$ENV_DIR/REDMINE_VERSION").tar.gz" | tar xz --strip 1

mv overlay/config/* config

OVERLAY_URL=$(cat "$ENV_DIR/OVERLAY_URL")
if [ ! -z "$OVERLAY_URL" ]; then
  git clone --depth 1 "$OVERLAY_URL" custom_overlay
  git -C custom_overlay submodule update --init --recursive --recommend-shallow --depth 1
  rsync -a custom_overlay/. .
fi
