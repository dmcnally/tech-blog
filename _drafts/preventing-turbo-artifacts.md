# Preventing Turbo Artifacts

You're using Hotwire and have noticed that when you're navigating from page to page that your users are seeing artifacts from interactions that they had on previous pages.

This occurs because Turbo caches pages and renders the cached version of a page to the user.

TODO: Flesh out this article with

```
document.addEventListener("turbo:before-cache", function() {
  // Clean up the page here
})
```
