---
layout: post
title:  "Welcome to Jekyll!"
---

# Importmap Woes

## Introduction

Using importmap in a normal Rails 7 application is pretty straightforwards and basically comes configured out of the box.  What isn't so straightforwards is when you want to ship stimulus controllers along with your rails engine and have them readily available to use within your application.

## pin_all_from

This has got to be one of the worst documented commands and every example you seem to see documented shows something like the following:

```
pin_all_from 'app/javascript/controllers', under: 'controllers'
```

The problem is that there is no real explanation in the importmap-rails gem about what params `pin_all_from` takes and what those values actually do other than in the [local modules](https://github.com/rails/importmap-rails?tab=readme-ov-file#local-modules) section on github.

It basically shows the same `under:` and `to:` options without any real explanation.

After much messing about trying different combinations of options I finally figured out that the important option is `to:` and you kind of miss out of that fact because `to:` takes on the value of `under:` if it is ommitted.

Example:

```
pin_all_from '/gems/my_gem/app/javascript/my_gem', to: 'javascript/my_gem', under: 'controllers'
```

My laymans explanation of what things do is as follows:

The `path` passed to `pin_all_from` can be to anywhere on the filesystem.  The `to:` option is the end of the `path` that you're really interested in.  `under:` replaces the `to:` at the start of the path.

So ... in our example above if we have a couple of files:

* `/gems/my_gem/app/javascript/my_gem/hello_world_controller.js` 
* `/gems/my_gem/app/javascript/my_gem/goodbye_world_controller.js` 

the `to:` param means that the following files will selected:

* `javascript/my_gem/hello_world_controller.js` 
* `javascript/my_gem/goodbye_world_controller.js` 

Next the `under:` param seems to be used to replace the initial part of the file name:

* `controllers/hello_world_controller.js` 
* `controllers/goodbye_world_controller.js` 

