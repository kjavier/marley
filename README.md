# README

Configuration:
  - You will need to provide the following as environment variables:
    - WEBHOOK_USERNAME
    - WEBHOOK_PASSWORD
    - API_ACCESS_TOKEN
    - API_SPACE
    - API_ENVIRONMENT


Run the application by executing the following command:
rails s -p 3000 -b 0.0.0.0


Nice to have:
  - Autoloading of recipes on list page as user scrolls
  - There is no pagination on the frontend but pagination is applied on the backend.
  - Render custom error pages (404, 500, etc...)
