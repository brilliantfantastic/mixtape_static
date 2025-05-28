Mixtape Static
==============

> A temporary static site for Mixtape while it is being built.

## DESCRIPTION

Mixtape Static is a static site (built with [Griffin](https://github.com/elixir-griffin/griffin)) that serves as a temporary home for the Mixtape project while the main site is being built. It provides information about the project.

## INSTALLATION

* Install the depedencies

```
mix deps.get
```

* Build the assets

This will run the `Tailwind` compiler, minify the css and copy it to the `_site` directory.

```
mix assets.deploy
```

* Build the static site

This will copy the correct assets to the `_site` directory and build the static site.

```
mix grf.build
```

* Serve the static site

Runs a small static server and watcher on port 4123.

```
mix grf.server
```

## DEPLOYMENT

This application is deployed to [GitHub Pages](https://pages.github.com/) via a GitHub action by just copying the `_site` directory.

The application is automatically deployed to production when code is merged into main and pushed to GitHub.

* NOTE: Ideally we would not deploy the static site to GitHub and run the build within the cd script. However, this is a temporary site.

### Steps to deploy

1. Make changes to the static site via the `src` and `assets` directories.
1. Run `mix assets.deploy` to build the assets.
1. Build the static site with `mix grf.build`.
1. Commit and push the changes to the `main` branch.
1. GitHub Pages will start the build process
