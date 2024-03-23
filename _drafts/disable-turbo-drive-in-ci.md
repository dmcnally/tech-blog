# Disable Turbo Drive in CI

The caching in Turbo drive can interfere with Capybara tests.

Essentially the cached pages used to make the app feel more responsive can leave Capybara returning incorrect data because the page had been updated with the old cached version of the page where the most recent version hasn't been fetched yet.

This is basically a race condition.

Simple solution is to disable turbo drive caching in the test environment.