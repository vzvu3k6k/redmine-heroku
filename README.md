# Redmine

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/vzvu3k6k/redmine-heroku)

- Admin's initial password is randomly generated on creating an instance. The password is displayed in build log and stored as `ADMIN_PASSWORD` of [config vars](https://devcenter.heroku.com/articles/config-vars).
- Plugins and themes can be installed by `OVERLAY_URL`.
    - [vzvu3k6k/redmine-heroku-overlay-example](https://github.com/vzvu3k6k/redmine-heroku-overlay-example) illustrates a custom overlay.
