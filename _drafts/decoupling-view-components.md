---
layout: post
title:  "Decoupling View Components"
---

# Decoupling View Components

Any remotely complex Rails application will make use of `content_for`, partials and a whole raft of different techniques for getting content to render in its appropriate place.

Using a combination of content_for and slots we can just about man-handle a button from an action into the correct place in the applications layout.

The code to do this is messy and relies on the developer remembering to wrap the component in an appropriate content_for and yield it in the correct place.

Instead we can build pairs of components that work together.

One component uses content_for internally to capture the content and the second component is used to render the captured content just like yielding does.


