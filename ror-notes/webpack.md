# webpacker

1.  What is Webpack?
    Webpack is a static module bundler for modern Javascript applications
2.  How does Webpack differ from the Asset Pipeline?

    - Different directory. With the Asset Pipeline you had Javascript files that lived in app/assets/javascript. with Webpack you have what are called “packs”, and packs live in app/javascript/packs

    - With the Asset Pipeline all Javascript code was bundled into one large file, with the small exception of code used to execute on Ajax requests. all files had to be referenced in the `application.js` file. Application.js is downloaded to a client when you first connect with the server.

    - with webpacl, we can have different pack files that can be downloaded only when needed. You can create an unlimited number of packs and just reference that pack on the page it is needed

3.  How do you add libraries to your Rails projects?
    - use `package.json` and yarn (my note: i guess you can also just use NPM?? ok maybe not, the official github doesn't mention npm)
    - Webpack references the `node_modules` folder as a top level directory
    - `require xlib` where `xlib` is `node_modules/xlib`
4.  How does Webpack build its dependency graph?

- Asset pipeline ensures you don't include the same package twice. even when you install package A and package B that references A. We only have one package A
- With Webpack it builds a dependency graph for each pack file. it tends to get bloated
- we can use many tools. for beginners, only use the default `application.js` pack file

## Extra notes

### webpack

```
<%= stylesheet_link_tag "application", media: "all", "data-turbolinks-track" => "reload" %>
<%= javascript_pack_tag "application", "data-turbolinks-track" => "reload" %>
```

### Asset pipeline

```
<%= stylesheet_link_tag "application", media: "all", "data-turbolinks-track" => "reload" %>
<%= javascript_include_tag "application", "data-turbolinks-track" => "reload" %>
```
